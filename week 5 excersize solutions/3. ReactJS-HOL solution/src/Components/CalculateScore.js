import React from "react";
import "../Stylesheets/mystyle.css";

function CalculateScore(props) {
  const average = (props.goal / props.Total) * 100;

  return (
    <div className="container">
      <h1>Student Details:</h1>

      <p>
        <span className="label">Name:</span> {props.Name}
      </p>

      <p>
        <span className="label">School:</span> {props.School}
      </p>

      <p>
        <span className="label">Total:</span> {props.Total} Marks
      </p>

      <p>
        <span className="score">Score:</span>
        {average.toFixed(2)}%
      </p>
    </div>
  );
}

export default CalculateScore;