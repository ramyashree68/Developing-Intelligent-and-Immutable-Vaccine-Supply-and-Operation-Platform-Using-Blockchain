<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>U_Find_Immutable_Vaccine_SupplyDetails1</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <!-- Removed old coin-slider, cufon, jQuery 1.4, etc. -->
  <!-- Keeping only fresh, local CSS-free setup with modern styles below -->

  <style type="text/css">
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

    /* Panel */
    .panel{
      background:rgba(13,17,28,.7);
      border:1px solid var(--border);
      border-radius:var(--radius);
      box-shadow:var(--shadow);
      padding:18px;
    }

    /* Results table (your JSP fills it) */
    .table-wrap{overflow:auto;border-radius:12px;border:1px solid var(--border)}
    table{
      width:100%;border-collapse:separate;border-spacing:0;min-width:720px;background:transparent;
    }
    thead th{
      position:sticky;top:0;z-index:1;
      background:linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.03));
      color:#f8fafc;
      text-align:center;
      padding:12px 10px;
      font-size:14px;letter-spacing:.3px;
      border-bottom:1px solid var(--border);
    }
    tbody td{
      text-align:center;padding:12px 10px;font-size:14px;color:var(--text);
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    tbody tr:hover{background:rgba(255,255,255,.03)}
    .back{
      display:inline-block;margin-top:14px;padding:10px 14px;border-radius:12px;
      border:1px solid var(--border);font-weight:700
    }
    .back:hover{background:rgba(255,255,255,.06)}

    /* Footer */
    

    @media (max-width:720px){
      .brand .title{display:none}
    }
  </style>
</head>

<body>
  <!-- Header / Navbar -->
  <header>
    <div class="container nav" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a href="index.html">Home</a></li>
       
       
    </div>
  </header>

  <main class="container">
    <!-- Page Title -->
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">Found Immutable Vaccine Supply Details</h1>
      <p>Results for your VID lookup are shown below.</p>
    </section>

    <!-- Results Panel -->
    <section class="panel" aria-label="Result table">
      <!-- KEEPING YOUR JSP / QUERY / TABLE EXACTLY THE SAME BELOW -->
      <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
      <%@ page import="java.sql.*"%>
      <%@ include file="connect.jsp" %>
      <%@ page import="java.util.Date" %>
      <%@ page import ="java.security.Key" %>
      <%@ page import ="javax.crypto.Cipher" %>
      <%@ page import ="java.math.BigInteger" %>
      <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
      <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
      <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
      <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>

      <div class="table-wrap">
        <table border="0" cellpadding="0" cellspacing="0">
          <thead>
            <tr>
              <th>Vid</th>
              <th>from_location</th>
              <th>supply_date</th>
              <th>vaccine_name</th>
              <th>total_vaccinations</th>
              <th>Logistics</th>
              <th>vaccine_date</th>
              <th>street_name</th>
              <th>city</th>
              <th>Hash Code</th>
            </tr>
          </thead>
          <tbody>
            <%
            String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18;
            int i=0,count=0;
            try {
              String vid=request.getParameter("vid");
              String query="select * from datasets where vid='"+vid+"'  ";
              Statement st=connection.createStatement();
              ResultSet rs=st.executeQuery(query);
              if ( rs.next() ) {
                i=rs.getInt(1);
                s1=rs.getString(2);
                s2=rs.getString(3);
                s3=rs.getString(4);
                s4=rs.getString(5);
                s5=rs.getString(6);
                s6=rs.getString(7);
                s7=rs.getString(8);
                s8=rs.getString(9);
                s9=rs.getString(10);
                s10=rs.getString(11);
            %>
            <tr>
              <td><%out.println(s1);%></td>
              <td><%out.println(s2);%></td>
              <td><%out.println(s3);%></td>
              <td><%out.println(s4);%></td>
              <td><%out.println(s5);%></td>
              <td><%out.println(s6);%></td>
              <td><%out.println(s7);%></td>
              <td><%out.println(s8);%></td>
              <td><%out.println(s9);%></td>
              <td><%out.println(s10);%></td>
            </tr>
            <%
              }
              connection.close();
            } catch(Exception e) {
              out.println(e);
            }
            %>
          </tbody>
        </table>
      </div>

      <a class="back" href="U_Main.jsp" aria-label="Back to user home">← Back</a>
    </section>
  </main>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>
</body>
</html>
