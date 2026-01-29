<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>View Supplied Vaccines Logistic Name Results</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --rust: #954535;
      --deep: #0b1220;
      --card: #0f172a;
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;
      --brand-dark: #14b8a6;
      --accent: #60a5fa;
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1100px;
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

    /* Navbar */
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
    .brand{
      display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px;
    }
    .brand .dot{
      width:12px;height:12px;border-radius:50%;
      background:linear-gradient(135deg,var(--brand),var(--accent));
      box-shadow:0 0 24px rgba(94,234,212,.6);
    }
    .brand .title{font-size:16px}

    .nav ul{display:flex;gap:8px;list-style:none}
    .nav a.navlink{
      padding:10px 14px;border-radius:12px;
      font-weight:700;letter-spacing:.2px;transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35);
    }

    /* Page section */
    .hero{padding:28px 0 8px}
    .hero h1{
      font-size: clamp(20px, 2.4vw, 26px);
      font-weight:800;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
      margin-bottom: 10px;
    }
    .card{
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      padding: 18px;
    }
    iframe{
      width:100%;
      height:650px;
      border:none;
      border-radius: 10px;
      background: var(--card);
    }
    .actions{
      display:flex;justify-content:flex-end;margin-top:10px;
    }
    .actions a{
      padding:8px 14px;
      border-radius:10px;
      background:rgba(12,12,30,.6);
      color:#fff;
      font-weight:700;
      text-align:center;
    }
    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }
  </style>
</head>
<body>

  <header>
    <div class="container nav">
      <div class="brand">
        <span class="dot"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink active" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </div>
  </header>

  <main class="container">
    <section class="hero">
      <h1>View Supplied Vaccines Logistic Name Results</h1>
    </section>
    <section class="card">
      <iframe src="Results1.jsp"></iframe>
      <div class="actions">
        <a href="A_Main.jsp">Back</a>
      </div>
    </section>
  </main>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>

</body>
</html>
