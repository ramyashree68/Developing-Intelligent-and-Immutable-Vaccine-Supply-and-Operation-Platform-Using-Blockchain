<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Login Failed — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;          /* brand brown */
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;       /* teal */
      --accent: #60a5fa;      /* blue */
      --maxw: 1100px;
      --radius: 18px;
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg,#954535 0%, #0b1220 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}

    /* Layout */
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav */
    header{
      position:sticky;top:0;z-index:50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:700}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px}

    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{display:inline-block;padding:10px 14px;border-radius:12px;color:var(--text);font-weight:600;letter-spacing:.2px;transition:all .18s ease}
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.navlink:focus-visible{outline:2px solid var(--accent);outline-offset:2px}

    /* Main */
    main{flex:1}
    .wrap{display:grid;place-items:center;padding:56px 24px}

    .card{
      width:100%;max-width:640px;
      background: var(--card);
      border:1px solid rgba(255,255,255,.08);
      border-radius: var(--radius);
      box-shadow: 0 12px 32px rgba(2,6,23,.45);
      padding: 28px;
      text-align:center;
    }
    .card h1{margin:0 0 8px;font-size: clamp(22px, 2.6vw, 30px);background: linear-gradient(135deg, var(--text), #cbd5e1);-webkit-background-clip:text;background-clip:text;color:transparent}
    .card p{color:var(--muted);margin:6px 0}

    .reasons{margin:14px auto 18px;max-width:520px;text-align:left;color:#d1d6df}
    .reasons li{margin:6px 0}

    .actions{display:flex;gap:12px;justify-content:center;margin-top:18px;flex-wrap:wrap}
    .btn{appearance:none;border:0;cursor:pointer;padding:10px 14px;border-radius:12px;font-weight:700;color:#0b1220;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 8px 20px rgba(20,184,166,.25);transition: transform .08s ease, filter .18s ease}
    .btn:hover{filter:saturate(110%)}
    .btn:active{transform:translateY(1px)}
    .btn.secondary{background:transparent;color:var(--text);outline:1px solid rgba(255,255,255,.25)}

    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}
  </style>
</head>
<body>
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <div class="wrap container">
      <div class="card" role="alert" aria-live="polite">
        <h1>Sorry, your login failed.</h1>
        <p>We couldn't sign you in. This usually happens due to an incorrect username or password.</p>
        <ul class="reasons">
          <li>Check your username and password for typos or case sensitivity.</li>
          <li>If you forgot your password, contact the system administrator to reset it.</li>
        </ul>
        <div class="actions">
          <a class="btn" href="A_Login.jsp">Try again</a>
          <a class="btn secondary" href="index.html">Back to Home</a>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>
