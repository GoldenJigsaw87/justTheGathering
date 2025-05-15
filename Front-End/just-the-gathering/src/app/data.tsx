"use client";
import { useState } from "react";

export default function AddUser() {
  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    email: "",
    username: "",
    password: ""
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      const res = await fetch("http://localhost:3000/create", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(formData),
      });

      const result = await res.json();
      console.log("Server response:", result);
      alert("User created successfully!");
    } catch (err) {
      console.error("Error:", err);
    }
  };

  return (
    <div>
      <h3>Sign up</h3>
      <form onSubmit={handleSubmit}>
        <input name="firstName" type="text" placeholder="First Name" onChange={handleChange} />
        <input name="lastName" type="text" placeholder="Last Name" onChange={handleChange} />
        <input name="email" type="text" placeholder="Email" onChange={handleChange} />
        <input name="username" type="text" placeholder="Username (public profile)" onChange={handleChange} />
        <input name="password" type="password" placeholder="Password" onChange={handleChange} />
        <button type="submit">Create</button>
      </form>
    </div>
  );
}
