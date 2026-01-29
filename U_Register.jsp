<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>User Registration Page</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      /* Sample palette */
      --rust: #954535;          /* top gradient */
      --deep: #0b1220;          /* bottom gradient */
      --card: #0f172a;          /* surfaces */
      --muted: #a7b0c0;         /* secondary text */
      --text: #e5e7eb;          /* primary text */
      --brand: #5eead4;         /* teal */
      --brand-dark: #14b8a6;    /* teal (darker) */
      --accent: #60a5fa;        /* blue */
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1100px;
      --input: rgba(255,255,255,.05);
    }

    *{box-sizing:border-box;margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    /* Navbar (matches sample) */
    header{
      position: sticky; top: 0; z-index: 50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{
      display:flex;align-items:center;justify-content:space-between;gap:16px;
      padding:14px 0;
    }
    .brand{display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px}
    .brand .dot{
      width:12px;height:12px;border-radius:50%;
      background:linear-gradient(135deg,var(--brand),var(--accent));
      box-shadow:0 0 24px rgba(94,234,212,.6);
    }
    .brand .title{font-size:16px}

    .nav ul{display:flex;gap:8px;list-style:none}
    .nav a.navlink{
      padding:10px 14px;border-radius:12px;font-weight:700;letter-spacing:.2px;
      transition:all .18s ease;color:var(--text)
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35);
    }

    /* Page header */
    .hero{padding:28px 0 8px}
    .hero h1{
      font-size: clamp(22px, 2.6vw, 30px);
      font-weight:800; margin:0 0 6px;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{color:var(--muted);margin:0}

    /* Card + form */
    .card{
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      padding: 22px;
      max-width: 760px;
    }
    .grid{
      display:grid;
      grid-template-columns: 1fr 1fr;
      gap: 14px;
    }
    .grid-full{grid-column: 1 / -1}
    .form-row{display:flex;flex-direction:column;gap:8px}
    label{font-weight:600}
    .input, select, textarea, input[type="file"]{
      width:100%;
      padding:12px 14px;
      border-radius:12px;
      border:1px solid var(--border);
      background: var(--input);
      color:var(--text);
      outline: none;
      transition: border-color .15s ease, box-shadow .15s ease;
    }
    textarea{min-height: 96px; resize: vertical}
    .input:focus, select:focus, textarea:focus, input[type="file"]:focus{
      border-color: rgba(94,234,212,.5);
      box-shadow: 0 0 0 3px rgba(94,234,212,.2);
    }
    .actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:10px}
    .btn{
      display:inline-flex;align-items:center;justify-content:center;
      padding:10px 16px;border-radius:12px;font-weight:700;cursor:pointer;border:none;
      transition:transform .12s ease;
    }
    .btn.primary{
      background:rgba(12,12,30,.6);
      color:#fff;
    }
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn:hover{transform:translateY(-1px)}
    .helper{margin-top:14px;color:var(--muted)}
    .helper a{color:var(--brand)}

    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }

    @media (max-width: 820px){
      .grid{grid-template-columns: 1fr}
      .brand .title{display:none}
      .card{max-width:100%}
    }
  </style>

  <script type="text/javascript">
    // Registration validation (kept, but trimmed to actual fields present)
    function valid(){
      var f = document.forms['s'];

      if(!f.name.value.trim()){
        alert("Please Enter User Name");
        f.name.focus(); return false;
      }
      if(!f.pwd.value.trim()){
        alert("Please Enter Password");
        f.pwd.focus(); return false;
      }
      if(!f.email.value.trim()){
        alert("Please Enter the Email");
        f.email.focus(); return false;
      }
      if(!f.mob.value.trim()){
        alert("Please Enter the Mobile");
        f.mob.focus(); return false;
      }
      if(!f.dob.value.trim()){
        alert("Please Enter the DOB");
        f.dob.focus(); return false;
      }
      if(f.gen.value === "--Select--"){
        alert("Please choose Gender");
        f.gen.focus(); return false;
      }
      if(!f.add.value.trim()){
        alert("Please Enter the Address");
        f.add.focus(); return false;
      }
      if(!f.loc.value.trim()){
        alert("Please Enter the Location");
        f.loc.focus(); return false;
      }
      if(!f.photo.value){
        alert("Please choose image");
        f.photo.focus(); return false;
      }
      return true;
    }
  </script>
</head>
<body>

  <!-- Navbar -->
  <header>
    <div class="container nav" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink active" href="U_Login.jsp">User</a></li>
      </ul>
    </div>
  </header>

  <!-- Content -->
  <center><main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">User Registration Form</h1>
      <p>Create your account to access vaccine services and records.</p>
    </section>

    <section class="card" aria-label="Registration form">
      <!-- Keep your JSP endpoint and field names -->
      <form name="s" method="post" enctype="multipart/form-data" action="U_RegIns.jsp" onsubmit="return valid()">
        <div class="grid">
          <div class="form-row">
            <label for="name">User Name</label>
            <input type="text" id="name" name="name" class="input" />
          </div>

          <div class="form-row">
            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" class="input" />
          </div>

          <div class="form-row">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" class="input" placeholder="abc@gmail.com" />
          </div>

          <div class="form-row">
            <label for="mob">Mobile</label>
            <input type="text" id="mob" name="mob" class="input" />
          </div>

          <div class="form-row">
            <label for="dob">DOB</label>
            <input type="text" id="dob" name="dob" class="input" placeholder="DD/MM/YYYY" />
          </div>

          <div class="form-row">
            <label for="gen">Gender</label>
            <select id="gen" name="gen" class="input">
              <option>--Select--</option>
              <option>Male</option>
              <option>Female</option>
            </select>
          </div>

          <div class="form-row grid-full">
            <label for="add">Address</label>
            <textarea id="add" name="add" class="input"></textarea>
          </div>

          <div class="form-row grid-full">
            <label for="loc">Location</label>
            <input type="text" id="loc" name="loc" class="input" placeholder="LOCATION" />
          </div>

          <div class="form-row grid-full">
            <label for="photo">Choose Photo</label>
            <input type="file" id="photo" name="photo" class="input" />
          </div>
        </div>

        <div class="actions">
          <button type="submit" class="btn primary">Register</button>
          <button type="reset" class="btn secondary">Clear</button>
        </div>

        <div class="helper">
          Already registered? <a href="U_Login.jsp">Go to Login</a>
        </div>
      </form>
    </section>
  </main></center>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>

</body>
</html>
