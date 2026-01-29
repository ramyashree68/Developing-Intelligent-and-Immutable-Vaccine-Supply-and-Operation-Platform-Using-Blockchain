<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>View Supplied Vaccine Name Results</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      /* Your sample palette */
      --bg: #9E4638;            /* rust tone (top of gradient) */
      --deep: #0b1220;          /* page base (bottom of gradient) */
      --card: #0f172a;          /* card/nav surfaces */
      --muted: #a7b0c0;         /* secondary text */
      --text: #e5e7eb;          /* primary text */
      --brand: #5eead4;         /* teal */
      --brand-dark: #14b8a6;    /* teal (darker) */
      --accent: #60a5fa;        /* blue */
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1100px;
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg, #954535 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    /* Header / Nav (matches sample look) */
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

    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:700;letter-spacing:.2px;
      transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35);
    }
    .nav a:focus-visible{outline:2px solid var(--brand-dark); outline-offset:2px}

    /* Page Headline */
    .hero{padding:28px 0 8px}
    .hero h1{
      margin:0;
      font-size: clamp(20px, 2.4vw, 26px);
      font-weight:800; line-height:1.25;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{margin:8px 0 0;color:var(--muted)}

    /* Card (sample-matching surface) */
    .card{
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      padding: 18px;
      margin-top: 18px;
    }

    /* Action row */
    .actions{
      display:flex;align-items:center;justify-content:space-between;
      gap:12px; margin-bottom:12px; flex-wrap:wrap;
    }
    .btn{
      display:inline-flex;align-items:center;gap:8px;
      padding:10px 14px;border-radius:12px;font-weight:700;
      background: linear-gradient(135deg, var(--brand), var(--accent));
      color:#0b1220; border: none; cursor:pointer;
      transition: transform .12s ease;
    }
    .btn:hover{transform: translateY(-1px)}
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.12);
    }
    .hint{color:var(--muted);font-size:14px}

    /* Responsive iframe wrapper */
    .iframe-wrap{
      position:relative; width:100%; border-radius:12px; overflow:hidden;
      outline:1px solid rgba(255,255,255,.08); background: var(--card);
      aspect-ratio: 16 / 10;
    }
    .iframe-wrap iframe{
      position:absolute; inset:0; width:100%; height:100%; border:0;
      background: var(--card);
    }

    /* Footer (sample style) */
    footer{
      margin-top:28px; padding:22px 0; text-align:center;
      color: var(--muted); border-top:1px solid rgba(255,255,255,.06);
    }

    @media (min-height: 900px){
      .iframe-wrap{aspect-ratio:auto; height: 70vh;}
    }
    @media (max-width: 700px){
      .brand .title{display:none}
    }
  </style>
</head>
<body>
  <header>
    <div class="container nav" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
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
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">View Supplied Vaccine Name — Results</h1>
     
    </section>

    <section class="card">
      <div class="actions">
        <a href="A_Main.jsp" class="btn secondary" aria-label="Go back to Admin main page">← Back</a>
       
      </div>

      <div class="iframe-wrap" aria-label="Results">
        <iframe src="Results.jsp" title="Supplied Vaccine Name — Results"></iframe>
      </div>
    </section>
  </main>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>
</body>
</html>
