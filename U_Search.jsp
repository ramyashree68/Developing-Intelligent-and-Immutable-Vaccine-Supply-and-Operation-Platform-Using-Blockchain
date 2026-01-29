<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Search — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --rust:#954535;          /* top gradient like your sample */
      --deep:#0b1220;          /* bottom gradient */
      --card:rgba(12,12,30,.6);/* surface */
      --muted:#a7b0c0;         /* secondary text */
      --text:#e5e7eb;          /* primary text */
      --brand:#5eead4;         /* teal */
      --accent:#60a5fa;        /* blue */
      --border:rgba(255,255,255,.08);
      --radius:18px;
      --maxw:1200px;
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav (matches your sample) */
    header{
      position:sticky; top:0; z-index:50;
      backdrop-filter:saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{font-size:16px;letter-spacing:.2px}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:700;letter-spacing:.2px;transition:all .18s ease
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35)
    }

    /* Main */
    main{flex:1}

    /* Hero */
    .hero{padding:42px 24px 20px}
    .hero-card{
      background:var(--card);
      border:1px solid var(--border);
      border-radius:var(--radius);
      padding:24px;
      box-shadow:0 12px 32px rgba(2,6,23,.45)
    }
    .hero h1{
      margin:0 0 8px;
      font-size: clamp(24px, 3vw, 36px);
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip:text; background-clip:text; color:transparent
    }
    .hero p{color:var(--muted);margin:0}

    /* Search card */
    .section{padding:12px 24px 36px}
    .card{
      background:var(--card);
      border:1px solid var(--border);
      border-radius:var(--radius);
      padding:22px;
      box-shadow:0 10px 28px rgba(2,6,23,.45);
      max-width:720px;
    }
    .form-row{display:flex;gap:12px;align-items:center;flex-wrap:wrap}
    .input{
      flex:1 1 340px;
      min-width:240px;
      padding:12px 14px;
      border-radius:12px;
      border:1px solid var(--border);
      background: rgba(255,255,255,.05);
      color:var(--text);
      outline:none;
      transition:border-color .15s ease, box-shadow .15s ease;
    }
    .input:focus{
      border-color: rgba(94,234,212,.5);
      box-shadow: 0 0 0 3px rgba(94,234,212,.2);
    }
    .btn{
      padding:12px 18px;border-radius:12px;border:none;cursor:pointer;font-weight:700;
      background:linear-gradient(135deg,var(--brand),var(--accent));color:#0b1220;
      transition:transform .12s ease;
    }
    .btn:hover{transform:translateY(-1px)}
    .hint{margin-top:10px;color:var(--muted);font-size:14px}
    .actions{display:flex;justify-content:flex-end;margin-top:14px}
    .link{color:var(--brand);font-weight:600}

    /* Footer */
    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}

    @media (max-width:760px){
      .card{max-width:100%}
      .brand .title{display:none}
    }
  </style>
</head>
<body>
  <!-- Header / Nav -->
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink active" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <!-- Main -->
  <main>
    <!-- Hero -->
    <section class="hero container">
      <div class="hero-card">
        <h1>Search Datasets</h1>
        <p>Look up records by location, vaccine name, logistics provider, or destination city.</p>
      </div>
    </section>

    <!-- Search form (keeps your action and input name) -->
   <center> <section class="section container" aria-label="Search form">
      <div class="card">
        <form name="s" action="U_Search1.jsp" method="post">
          <div class="form-row">
            <input type="text" name="keyword" class="input" placeholder="Enter your keyword…" />
            <button type="submit" class="btn">Search</button>
          </div>
          <div class="hint">
            Searching based on <strong>From Location</strong>, <strong>Vaccine Name</strong>, <strong>Logistic Name</strong>, and <strong>To City</strong>.
          </div>
        </form>
        <div class="actions">
          <a href="U_Main.jsp" class="link">← Back to User Home</a>
        </div>
      </div>
    </section></center>
  </main>

  <!-- Footer -->
  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>
