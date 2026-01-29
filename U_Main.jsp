<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>User — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;           /* brand rust (top) */
      --deep: #0b1220;         /* deep navy (bottom) */
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;        /* teal */
      --accent: #60a5fa;       /* blue */
      --border: rgba(255,255,255,.08);
      --maxw: 1200px;
      --radius: 18px;
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg,#954535 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav (sample-matched) */
    header{
      position:sticky; top:0; z-index:50;
      backdrop-filter:saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px;font-size:16px}

    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:700;letter-spacing:.2px;transition:all .18s ease
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));outline:1px solid rgba(94,234,212,.35)}

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

    /* User menu grid */
    .section{padding:12px 24px 36px}
    .grid{display:grid;grid-template-columns:repeat(3, minmax(0,1fr));gap:16px}
    @media (max-width: 980px){.grid{grid-template-columns:repeat(2, minmax(0,1fr))}}
    @media (max-width: 620px){.grid{grid-template-columns:1fr}}

    .tile{
      background:var(--card);
      border:1px solid var(--border);
      border-radius:16px;
      padding:16px;
      display:flex;justify-content:space-between;align-items:center;gap:10px;
      transition:transform .08s ease, filter .18s ease
    }
    .tile:hover{filter:saturate(110%);transform:translateY(-1px)}
    .tile h3{margin:0;font-size:16px}
    .tile .go{
      font-weight:700;padding:8px 12px;border-radius:12px;
      background:linear-gradient(135deg,var(--brand),var(--accent));color:#0b1220
    }

    /* Footer */
    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}
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
    <!-- Hero (no images; aligned like sample) -->
    <section class="hero container">
      <div class="hero-card">
        <h1>Welcome, <%= (String) application.getAttribute("uname") %></h1>
        <p>Access your profile, search datasets, and view immutable vaccine supply details secured on blockchain.</p>
      </div>
    </section>

    <!-- User Menu (tiles, like sample admin grid) -->
    <section class="section container" aria-label="User Menu">
      <div class="grid">
        <a class="tile" href="U_Profile.jsp">
          <h3>My Profile</h3><span class="go">Open</span>
        </a>
        <a class="tile" href="U_Find_Immutable_Vaccine_SupplyDetails.jsp">
          <h3>Find Vaccine Supply Details</h3><span class="go">Open</span>
        </a>
        <a class="tile" href="U_Find_Immutable_Vaccine_Supply_By_Hashcode.jsp">
          <h3>Access by Blockchain Hashcode</h3><span class="go">Open</span>
        </a>
        <a class="tile" href="U_Search.jsp">
          <h3>Search Datasets</h3><span class="go">Open</span>
        </a>
        <a class="tile" href="U_Login.jsp">
          <h3>Logout</h3><span class="go">Exit</span>
        </a>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>
