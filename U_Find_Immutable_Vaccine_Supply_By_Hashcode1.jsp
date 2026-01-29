<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Access Immutable Vaccine Supply By Blockchain Hashcode</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <!-- Removed: css/coin-slider.css, cufon, jQuery 1.4, coin-slider, images -->
  <!-- Fresh theme using your sample palette -->
  <style type="text/css">
    :root{
      --rust:#954535;
      --deep:#0b1220;
      --card:#0f172a;
      --muted:#a7b0c0;
      --text:#e5e7eb;
      --brand:#5eead4;    /* teal */
      --accent:#60a5fa;   /* blue */
      --border:rgba(255,255,255,.08);
      --radius:18px;
      --maxw:1100px;
      --input:rgba(255,255,255,.04);
      --shadow:0 12px 30px rgba(2,6,23,.35);
    }

    html,body{height:100%}
    *{box-sizing:border-box;margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale;
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
    .hero{padding:28px 0 8px}
    .hero h1{
      font-size: clamp(20px, 2.4vw, 26px);
      font-weight:800; margin:0 0 6px;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{color:var(--muted)}

    /* Content card */
    .wrap{display:flex;justify-content:center}
    .card{
      width:100%; max-width:860px;
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      padding: 22px;
    }
    .card h2{font-size:clamp(18px,2.2vw,22px);font-weight:800;margin-bottom:8px}
    .subtitle{color:var(--muted);margin-bottom:12px}

    /* Optional content area inside the card */
    .content-block{color:var(--text);}

    /* Buttons */
    .actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:14px}
    .btn{
      display:inline-flex;align-items:center;justify-content:center;
      padding:10px 16px;border-radius:12px;font-weight:800;cursor:pointer;border:none;
      transition:transform .12s ease, background .2s ease, outline-color .2s ease;
    }
    .btn.primary{
      background: rgba(12,12,30,.6);
      color:#fff;
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn.primary:hover{transform:translateY(-1px)}
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn.secondary:hover{transform:translateY(-1px)}

    /* Scroll container for table */
    .table-scroll {
      max-height: 400px; /* adjust as needed */
      overflow: auto;
    }

    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }
    @media (max-width: 720px){
      .brand .title{display:none}
    }
  </style>
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
        
        <li><a class="navlink" href="U_Login.jsp">Logout</a></li>
      </ul>
    </div>
  </header>

  <!-- Page content -->
  <main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">Accessed Immutable Vaccine Supply By Blockchain Hashcode</h1>
	
      <div class="table-scroll">
      <table width="531" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>Vid </strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>from_location</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>supply_date</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>vaccine_name</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>total_vaccinations</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>Logistics</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>vaccine_date</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>street_name</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>city</strong></em></div></td>
          <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style10"><em><strong>Hash Code</strong></em></div></td>
        </tr>
        <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18;
int i=0,count=0;
try 
{

  				    String Type=request.getParameter("Type");
   				    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Type));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
  
 
	String query="select * from datasets where hc='"+h1+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
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
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s1);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s2);%>
          </strong></div></td>
          <td align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s3);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s4);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s5);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s6);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s7);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s8);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s9);%>
          </strong></div></td>
          <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7 style12"><strong>
              <%out.println(s10);%>
          </strong></div></td>
        </tr>
        <%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
      </div> <!-- end scroll wrapper -->

      <div class="mainbar">
        <div class="article">
          <div class="post_content">
		  <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
