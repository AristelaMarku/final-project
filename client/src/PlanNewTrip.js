import { useState } from "react";
import LandmarkMap from "./LandmarkMap";
import MultiSelect from "react-multiple-select-dropdown-lite";
import "react-multiple-select-dropdown-lite/dist/index.css";
import {Form,Row,Col} from 'react-bootstrap'
import React from "react"; 

function PlanNewTrip({ hotels, pointsInteres }) {
  const [formData, setFormData] = useState({
    city: "",
    date: "",
    hotel: "",
  });
  
  
  const [value, setvalue] = useState("");
  var frontEndAttractions = [];

  const handleOnchange = (value) => {
    setvalue(value);
    const arrValu = value.split(",");
    if (arrValu.length !== 0)  {
      frontEndAttractions.push(value);
      localStorage.setItem(
        "FrontEndAttractions",
        JSON.stringify(frontEndAttractions[0].split(","))
      );
     
      arrValu.map((oneattraction) => {
       if(oneattraction !==" "){
        fetch("/attractions", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            name: oneattraction,
          }),
        }).then((res) => {
          if (res.ok) {
            res.json().then((attractions) => {
              console.log("attractions posted in db", attractions);
            });
          } else {
            res.json().then((error) => {
              console.log(error);
            });
          }
        });
      }}
      );
      }
  };

  const listhotels = hotels.map((hotels) => {
    return <option id="option" key={hotels.place_id}>{hotels.name}</option>;
  });

  const listpoi = pointsInteres.map((poi) => {
    return { label: poi.name, value: poi.name };
  });

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    fetch("/newtrips", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    }).then((res) => {
      if (res.ok) {
        res.json().then((newtrip) => {
          handleSubmit2(newtrip.id);
          alert("New Trip Created")
          setFormData({city: "", date:"", hotel:""})
          setvalue(null)
        });
      } else {
        res.json().then((error) => {
          console.log(error);
        });
      }
    });
  };

  const insertToAdventures = (tripId, attractionId) => {
    fetch("/adventures", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        newtrip_id: tripId,
        attraction_id: attractionId,
      }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((data) => {
          //  console.log(data)}
        });
      } else {
        // r.json().then((err)=>setErrors([...errors, err.errors]))
      }
    });
  };
  const handleSubmit2 = (newtrip_id) => {
    var tempAttractions = JSON.parse(
      localStorage.getItem("FrontEndAttractions")
    );
    // console.log(tempAttractions);
    let validAttractions = [];
    fetch("/attractions")
      .then((res) => res.json())
      .then((data) => {
        console.log("get attraction", data);
        for (let i = 0; i < data.length; i++) {
          for (let j = 0; j < tempAttractions.length; j++) {
            if (data[i].name === tempAttractions[j]) {
              validAttractions.push(data[i].id);
              console.log("array me valid data", validAttractions);
            }
          }
        }
        validAttractions.forEach((attractionId) => {
          console.log("AtractionId", attractionId);
          insertToAdventures(newtrip_id, attractionId);
          localStorage.setItem("FrontEndAttractions", null);
        });
        //insertToAdventures(newtrip_id, validAttractions);
      });
  };

  return (
    <>
    <p id="planNewTrip">Plan your Trip</p>
      <Form id="planNewTrip" onSubmit={handleSubmit}>
      <Row className="align-items-center">
         
         <Col xs="auto">
        <Form.Group className="mb-3">
        <Form.Label> 1.City</Form.Label>
        <Form.Control id="city" name="city" value={formData.city} onChange={handleChange}  menuPlacement="bottom"/>
        </Form.Group>
         </Col>

         <Col  xs="auto">
         <Form.Group className="mb-3">
         <Form.Label> 2.Date</Form.Label>
        <Form.Control
         id="date"
          name="date"
          type="date"
          value={formData.date}
          onChange={handleChange}
        />
        </Form.Group>
        </Col>

        <Col  xs="auto">
        <Form.Group className="mb-3">
        <Form.Label> 3.Hotel</Form.Label>
        <Form.Select id="dropdown" name="hotel" value={formData.hotel} onChange={handleChange} menuPlacement="bottom" >
          {listhotels}
        </Form.Select>
        </Form.Group>
        </Col>

        <Col  xs="auto">
        <Form.Group className="mb-3">
        <Form.Label> 4.Choose Attraction Points</Form.Label>
        <MultiSelect
          className="multiselector"
          onChange={(val) => handleOnchange(val)}
          options={listpoi}
          // menuPosition='bottom'
          downArrow={true}
          defaultValue="Attraction Point"
          menuPlacement="bottom"
        />
        </Form.Group>
        </Col>

        <Col xs="auto">
        <Form.Group className="mb-3">
        <button id="button3" >Submit</button>
        </Form.Group>
        </Col>
        </Row>
      </Form>
    </>
  );
}

export default PlanNewTrip;
