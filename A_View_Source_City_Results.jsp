<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Source City — Results</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;
      --brand-dark: #14b8a6;
      --accent: #60a5fa;
      --maxw: 1100px;
      --radius: 18px;
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans";
      background: linear-gradient(180deg,#954535 0%, #0b1220 100%);
      color: var(--text);
      line-height: 1.6;
    }
    a{color:inherit;text-decoration:none}

    /* Nav styles from sample */
    header{
      position:sticky;top:0;z-index:50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px;max-width:var(--maxw);margin:0 auto}
    .brand{display:flex;align-items:center;gap:12px;font-weight:700}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      padding:10px 14px;border-radius:12px;
      font-weight:600;letter-spacing:.2px;
      transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35)
    }

    /* Container */
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Title */
    h1.title{
      font-size: clamp(22px, 2.5vw, 30px);
      font-weight:800;
      margin-bottom:18px;
      background: linear-gradient(135deg, var(--brand), var(--accent));
      -webkit-background-clip: text; background-clip: text; color: #ffff;
    }

    /* Chart card */
    .chart-card{
      background: var(--card);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      padding: 16px;
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      overflow-x:auto; /* horizontal scroll */
    }
    .chart-inner{
      min-width: 900px; /* triggers scroll */
      display: flex;
      justify-content: center;
    }
    .chart-frame{
      border:0;
      width:100%;
      max-width: 1000px; /* roughly half page */
      height:600px;
    }

    /* Custom Scrollbar */
    .chart-card::-webkit-scrollbar {
      height: 10px;
    }
    .chart-card::-webkit-scrollbar-track {
      background: rgba(255,255,255,0.05);
      border-radius: 10px;
    }
    .chart-card::-webkit-scrollbar-thumb {
      background: rgba(94,234,212,0.4);
      border-radius: 10px;
    }
    .chart-card::-webkit-scrollbar-thumb:hover {
      background: rgba(94,234,212,0.6);
    }
    /* Firefox */
    .chart-card {
      scrollbar-width: thin;
      scrollbar-color: rgba(94,234,212,0.4) rgba(255,255,255,0.05);
    }

    footer{
      padding:36px 24px;
      color:#9E4638;
      text-align:center;
      border-top:1px solid rgba(255,255,255,.06)
    }
  </style>
</head>
<body>
  <header>
    <nav class="nav" aria-label="Primary">
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

  <main class="container">
    <h1 class="title">Source City — Results</h1>
    <div class="chart-card">
      <div class="chart-inner">
        <iframe class="chart-frame" src="Results2.jsp"></iframe>
      </div>
    </div>
  </main>
    <p align="right"><a href="A_Main.jsp">Back</a></p>

  <footer>
    © <script>document.write(new Date().getFullYear())</script> Immutable Vaccine Supply
  </footer>
</body>
</html>
