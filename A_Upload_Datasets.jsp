<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>A_Upload_Datasets — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;          /* brand brown */
      --page: #0b1220;        /* page gradient end */
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;       /* teal */
      --brand-dark: #14b8a6;
      --accent: #60a5fa;      /* blue */
      --maxw: 1100px;
      --radius: 18px;
      --border: rgba(255,255,255,.12);
      --row: rgba(255,255,255,.04);
      --focus: rgba(94,234,212,.6);
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg, var(--bg) 0%, var(--page) 100%);
      color: var(--text);
      line-height: 1.6;
      min-height: 100vh;
    }
    a{color:inherit;text-decoration:none}

    /* Scrollbar */
    ::-webkit-scrollbar{width:10px}
    ::-webkit-scrollbar-track{background:#0b1220}
    ::-webkit-scrollbar-thumb{background:linear-gradient(var(--brand), var(--accent));border-radius:10px}
    ::-webkit-scrollbar-thumb:hover{background:linear-gradient(var(--brand-dark), var(--accent))}

    /* Layout */
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav */
    header{
      position:sticky;top:0;z-index:50;
      background: var(--bg);
      border-bottom: 2px solid var(--brand-dark);
      box-shadow: 0 6px 18px rgba(0,0,0,.35);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px;color:#fff;white-space:nowrap}

    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:#fff;font-weight:600;letter-spacing:.2px;transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.12)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.25), rgba(96,165,250,.25));outline:1px solid rgba(94,234,212,.35)}

    /* Page Title */
    .hero{padding:44px 24px 10px}
    .hero h1{
      margin:0;
      font-size: clamp(26px, 2.8vw, 38px);
      line-height:1.2;font-weight:800;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip:text; background-clip:text; color:transparent;
    }
    .hero p{color:var(--muted);margin:10px 0 0}

    /* Card */
    .card{
      background: var(--card);
      border:1px solid var(--border);
      border-radius: var(--radius);
      padding: 22px; margin-top:18px;
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
    }

    /* Upload form (centered) */
    .upload-center {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      gap: 12px;
      margin-top: 40px;
    }
    input[type="file"] {
      padding: 10px;
      border-radius: 8px;
      background: rgba(255,255,255,.9);
      color: #000;
      border: none;
      font-size: 14px;
    }
    .btn {
      appearance: none;
      border: none;
      border-radius: 14px;
      padding: 10px 18px;
      font-weight: 700;
      cursor: pointer;
    }
    .btn-primary {
      background: rgba(12,12,30,.6);
      color: #ffff;
    }
    .btn-primary:hover {
      background: linear-gradient(135deg, var(--brand-dark), var(--accent));
    }

    /* Table preview */
    .table{width:100%;border-collapse:separate;border-spacing:0;margin-top:14px}
    .table th,.table td{padding:12px 14px;text-align:left}
    .table thead th{background:rgba(255,255,255,.06);border-bottom:1px solid var(--border)}
    .table tbody tr{background:transparent}
    .table tbody tr:nth-child(even){background:var(--row)}
    .pill{display:inline-flex;align-items:center;gap:8px;padding:6px 10px;border-radius:999px;font-size:12px;background:rgba(255,255,255,.08);outline:1px solid rgba(94,234,212,.35)}

    /* Footer */
    footer{padding:36px 24px;text-align:center;border-top:1px solid var(--border);color:var(--muted)}

    /* Responsive */
    @media (max-width: 900px){
      .upload-form{grid-template-columns:1fr}
    }
  </style>
</head>
<body>
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="#" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink active" href="#">Upload Datasets</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section class="hero container">
      <h1>Upload Datasets</h1>
      <p>Developing Intelligent and Immutable Vaccine Supply and Operation Platform using Blockchain and Artificial Intelligence.</p>
    </section>

     <center><form name="vinform" action="A_Upload_Datasets1.jsp" method="post" id ="firstForm"> 

            <table width="424">
              <tr>
                <td width="280" height="50" bgcolor="#FFFFFF">
				<input type="file" name="fname" required></td>
                <td width="208"><label>
                <input type="submit" name="Submit" value="Upload" />
                </label></td>
              </tr>
            </table>
        </form></center>

  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>
