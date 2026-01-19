<!DOCTYPE html>
<html>  
<head>
  <meta charset="UTF-8">
  <title>A special question</title>  
  <style>  
    body {  
       background-color:gray;  
       text-align:center;
       overflow:hidden;
    }
    
    h1 {  
      color:white;  
      text-align:center;
      font-size:30px;
      font-family:"Courier new",monospace;
      animation:move 2s infinite;
    }
    
    img {  
      width:300px;
      border-radius:100px;
      display:block;  
      margin:10px auto;  
    }
    
    p {  
      color:white;  
      text-align:center;
      font-size:60px;
      font-family:"Times New Roman" serif;
      animation: fade 2s;
    }
    
    @keyframes fade {
      from {
        opacity:0;
      }
      to {
        opacity:1;
      }
    }
    
    button {  
      background-color:white;  
      color:black;  
      border:none;  
      border-radius:18px;
      padding:18px;
      cursor:pointer;
      transition:0.5s;
      font-family:Verdana;
    }
    
    button:hover {
      background-color:black;
      color:white;
    }
    
    .heart {
      position: fixed ;
      bottom:0;
      font-size:30px;
      animation:float 3s linear forwards;
    }
    @keyframes float {
      from { transform: translateY(0);opacity:1;}
      to { transform: translateY(-600px); opacity:0;}
    }
  </style>  
</head>  
<body>
    
  <h1 id="text">Kya aap boy ho👀</h1>
  
  <img id="photo" src="armansam3.jpg" alt="my photo">
  
  <p id="text2">Yes or No 👀</p>
  
  <button onclick="yes()">Yes🩷</button>
  
  <button onclick="no()">No😿</button>
  
  <img src="armansam1.jpg" alt="my photo">

  <script>
    function no() {
      document.getElementById("text2").innerText="No pe click kyu kya aap mele gud boy ni ho 😭👀";
    } 
    
    function yes() {
      document.getElementById("text2").innerText="hehe mele gud boy 💋😘";
      
      document.getElementById("photo").src="armansam.jpg";
      
      for (let i=0; i<12; i++) {
        createHeart();
      }
    }
    
    function createHeart() {
      let heart=document.createElement("div")
      heart.className= "heart";
      heart.innerHTML= "&#10084;&#65039;";
      heart.style.left= Math.random() *100 + "vw";
      document.body.appendChild(heart);
      
      setTimeout(() => heart.remove (),3000);
    }
  </script>
</body>
</html>
