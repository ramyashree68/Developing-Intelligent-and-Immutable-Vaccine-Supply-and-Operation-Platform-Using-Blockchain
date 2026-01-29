<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin Login — Immutable Vaccine Supply</title>
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
      --input-bg: rgba(255,255,255,.06);
      --input-br: rgba(255,255,255,.12);
      --input-text: #e5e7eb;
      --error: #fecaca;
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg,#954535 0%, #0b1220 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh;
      display:flex;flex-direction:column;
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
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:600;letter-spacing:.2px;
      transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.navlink:focus-visible{outline:2px solid var(--accent);outline-offset:2px}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35)}

    /* Mobile nav responsiveness */
    @media (max-width: 560px){
      .nav{flex-wrap:wrap}
      .nav ul{width:100%;justify-content:flex-end}
    }

    /* Main */
    main{flex:1}
    .wrap{display:grid;place-items:center;padding:48px 24px}

    .card{
      width:100%;max-width:520px;
      background: var(--card);
      border:1px solid rgba(255,255,255,.08);
      border-radius: var(--radius);
      box-shadow: 0 12px 32px rgba(2,6,23,.45);
      padding: 28px;
    }
    .card h1{
      margin:0 0 4px;font-size: clamp(22px, 2.2vw, 28px);
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip:text; color: transparent;
    }
    .subtitle{color:var(--muted);margin:0 0 18px}

    form{display:grid;gap:14px}
    label{font-weight:600}
    .input{
      width:100%;
      background: var(--input-bg);
      color: var(--input-text);
      border:1px solid var(--input-br);
      border-radius:12px;
      padding:12px 14px;
      outline:none;
      transition:border .18s ease, box-shadow .18s ease;
    }
    .input:focus{border-color:var(--brand);box-shadow:0 0 0 3px rgba(94,234,212,.25)}

    .actions{display:flex;gap:10px;align-items:center}
    .btn{
      appearance:none;border:0;cursor:pointer;
      padding:10px 14px;border-radius:12px;font-weight:700;
      color:#ffff; background:rgba(12,12,30,.6);
      box-shadow: 0 8px 20px rgba(20,184,166,.25);
      transition: transform .08s ease, filter .18s ease;
    }
    .btn:hover{filter:saturate(110%)}
    .btn:active{transform:translateY(1px)}
    .btn.secondary{background:transparent;color:var(--text);outline:1px solid rgba(255,255,255,.25)}

    .helper{color:var(--muted);font-size:13px}
    .error{display:none;color:var(--error);font-weight:600}

    /* Footer */
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
        <li><a class="navlink active" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <div class="wrap container">
      <div class="card" role="region" aria-labelledby="loginTitle">
        <h1 id="loginTitle">Admin Login</h1>
        <p class="subtitle">Please sign in with your administrator credentials.</p>

        <form id="loginForm" action="Authentication.jsp?value=adminlogin" method="post" novalidate>
          <div>
            <label for="adminid">User Name</label>
            <input class="input" type="text" id="adminid" name="adminid" autocomplete="username" required />
          </div>
          <div>
            <label for="pass">Password</label>
            <input class="input" type="password" id="pass" name="pass" autocomplete="current-password" required />
          </div>

          <p id="err" class="error" role="alert">Please enter both username and password.</p>

          <div class="actions">
            <button class="btn" type="submit">Login</button>
            <button class="btn secondary" type="reset">Reset</button>
          </div>
          <p class="helper">Forgot your password? Contact the system administrator.</p>
        </form>
      </div>
    </div>
  </main>

  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>

  <script>
    // Lightweight client-side validation (optional)
    const form = document.getElementById('loginForm');
    const err = document.getElementById('err');
    form.addEventListener('submit', (e)=>{
      const ok = form.adminid.value.trim() && form.pass.value.trim();
      if(!ok){
        e.preventDefault();
        err.style.display = 'block';
      } else {
        err.style.display = 'none';
      }
    });
  </script>
</body>
</html>
