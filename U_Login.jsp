<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>User Login Page</title>
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
      --input: rgba(255,255,255,.04);
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
      max-width: 680px;
    }
    .form-row{display:flex;flex-direction:column;gap:8px;margin-bottom:14px}
    label{font-weight:600}
    .input{
      width:100%;
      padding:12px 14px;
      border-radius:12px;
      border:1px solid var(--border);
      background: var(--input);
      color:var(--text);
      outline: none;
      transition: border-color .15s ease, box-shadow .15s ease;
    }
    .input:focus{
      border-color: rgba(94,234,212,.5);
      box-shadow: 0 0 0 3px rgba(94,234,212,.2);
    }
    .actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:6px}
    .btn{
      display:inline-flex;align-items:center;justify-content:center;
      padding:10px 16px;border-radius:12px;font-weight:700;cursor:pointer;border:none;
      transition:transform .12s ease;
    }
    .btn.primary{
      background: rgba(12,12,30,.6);
      color:#fff;
    }
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn:hover{transform:translateY(-1px)}
    .helper{
      margin-top:14px;color:var(--muted)
    }
    .helper a{color:var(--brand)}

    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }

    @media (max-width: 720px){
      .card{max-width:100%}
      .brand .title{display:none}
    }
  </style>

  <script type="text/javascript">
    // keep your validation logic, just cleaner
    function valid(){
      var u = document.forms['s'].username.value.trim();
      if(!u){
        alert("Please Enter User Name");
        document.forms['s'].username.focus();
        return false;
      }
      var p = document.forms['s'].password.value.trim();
      if(!p){
        alert("Please Enter Password");
        document.forms['s'].password.focus();
        return false;
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
      <h1 id="page-title">Welcome to User Login</h1>
      <p>Sign in to access your dashboard and vaccine records.</p>
    </section>

    <section class="card" aria-label="Login form">
      <!-- Keep your JSP target and field names -->
     <center> <form name="s" action="Authentication.jsp?value=<%="userlogin"%>" method="post" onsubmit="return valid()">
        <div class="form-row">
          <label for="username">User Name (required)</label>
          <input id="username" name="username" class="input" type="text" autocomplete="username" />
        </div>
        <div class="form-row">
          <label for="password">Password (required)</label>
          <input id="password" name="password" class="input" type="password" autocomplete="current-password" />
        </div>

        <div class="actions">
          <button type="submit" class="btn primary">Login</button>
          <button type="reset" class="btn secondary">Reset</button>
        </div>

        <div class="helper">
          New user? <a href="U_Register.jsp">Click here to register</a>
        </div>
      </form></center>
    </section>
  </main></center>
  <br />
  <br />
  <br />
  <br />
  <br />
  

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>

</body>
</html>
