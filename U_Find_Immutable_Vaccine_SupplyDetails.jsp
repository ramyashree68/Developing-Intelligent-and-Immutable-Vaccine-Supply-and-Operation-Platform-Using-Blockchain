<!DOCTYPE html>
<%@ include file="connect.jsp" %>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Find Immutable Vaccine Supply Details</title>

  <!-- Inter font like your sample -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">

  <style>
    :root{
      --rust:#954535;
      --deep:#0b1220;
      --card:#0f172a;
      --muted:#a7b0c0;
      --text:#e5e7eb;
      --brand:#5eead4;
      --accent:#60a5fa;
      --border:rgba(255,255,255,.08);
      --radius:18px;
      --maxw:1100px;
      --input:rgba(255,255,255,.04);
    }

    *{box-sizing:border-box;margin:0;padding:0}
    html,body{height:100%}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    /* Navbar */
    header{
      position: sticky; top: 0; z-index: 50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 0}
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
    .hero{padding:28px 0 8px;text-align:left}
    .hero h1{
      font-size: clamp(22px, 2.6vw, 30px);
      font-weight:800; margin:0 0 6px;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{color:var(--muted);margin:0}

    /* Card + form */
    .wrap{display:flex;justify-content:center}
    .card{
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      padding: 22px;
      width:100%;
      max-width: 640px;
    }
    .card h2{
      font-size: clamp(18px, 2.2vw, 22px);
      font-weight: 800;
      margin-bottom: 8px;
      color: var(--text);
    }
    .subtitle{color:var(--muted);margin-bottom: 12px}

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
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn:hover{transform:translateY(-1px)}

    .helper{margin-top:14px;color:var(--muted)}
    .links{display:flex;gap:12px;margin-top:8px}
    .links a{color:var(--brand);font-weight:600}

    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }

    @media (max-width: 720px){
      .brand .title{display:none}
    }
  </style>

  <script>
    // simple validation like your sample
    function valid(){
      var v = document.forms['s'].vid.value.trim();
      if(!v){
        alert("Please enter VID");
        document.forms['s'].vid.focus();
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
        <li><a class="navlink" href="U_Main.jsp">Home</a></li>
        <li><a class="navlink active" href="U_Find_Immutable_Vaccine_SupplyDetails1.jsp">Find Supply</a></li>
        <li><a class="navlink" href="U_Login.jsp">Logout</a></li>
      </ul>
    </div>
  </header>

  <!-- Content -->
  <main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">Find Immutable Vaccine Supply Details</h1>
      <p>Enter a VID to retrieve immutable supply information.</p>
    </section>

    <div class="wrap">
      <section class="card" aria-label="Find supply form">
        <h2>Lookup by VID</h2>
        <p class="subtitle">Provide the Vaccine ID (VID) and submit to view details.</p>

        <!-- Keep your JSP target and field names -->
        <form name="s" action="U_Find_Immutable_Vaccine_SupplyDetails1.jsp" method="post" onsubmit="return valid()">
          <div class="form-row">
            <label for="vid">Enter VID (required)</label>
            <input id="vid" name="vid" class="input" type="text" placeholder="e.g., VID-000123" />
          </div>

          <div class="actions">
            <button type="submit" class="btn primary">Find Immutable Vaccine Supply</button>
            <button type="reset" class="btn secondary">Reset</button>
          </div>

          <div class="links">
            <a href="U_Main.jsp" aria-label="Back to user home">← Back</a>
          </div>
        </form>
      </section>
    </div>
  </main>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>

</body>
</html>
