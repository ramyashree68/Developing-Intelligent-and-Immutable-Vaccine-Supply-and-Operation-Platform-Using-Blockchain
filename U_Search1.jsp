<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Search Results — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --rust:#954535;           /* top gradient (brand rust) */
      --deep:#0b1220;           /* bottom gradient (deep navy) */
      --card:rgba(12,12,30,.6); /* surfaces */
      --muted:#a7b0c0;          /* secondary text */
      --text:#e5e7eb;           /* primary text */
      --brand:#5eead4;          /* teal */
      --accent:#60a5fa;         /* blue */
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

    /* Results card + table */
    .section{padding:12px 24px 36px}
    .card{
      background:var(--card);
      border:1px solid var(--border);
      border-radius:var(--radius);
      padding:22px;
      box-shadow:0 10px 28px rgba(2,6,23,.45);
    }
    .actions{display:flex;justify-content:flex-end;margin-bottom:12px}
    .link{color:var(--brand);font-weight:600}

    .table-scroll{
      max-height:60vh; 
      overflow:auto;
      border:1px solid rgba(255,255,255,.12);
      border-radius:12px; 
      background: rgba(12,12,30,.85);
    }
    table{width:100%; border-collapse:collapse; min-width:760px; color:var(--text)}
    thead th{
      position:sticky; top:0;
      background:rgba(255,255,255,.05);
      padding:12px 14px; text-align:left; font-weight:700;
      border-bottom:1px solid rgba(255,255,255,.15);
      color:#5eead4;
    }
    tbody td{padding:12px 14px; border-bottom:1px solid rgba(255,255,255,.08)}
    tbody tr:hover{background:rgba(255,255,255,.06)}
    .empty{color:var(--muted); padding:10px 0}

    /* Footer */
    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}

    @media (max-width:760px){
      .brand .title{display:none}
      .card{padding:18px}
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
        <h1>Searched Datasets Details</h1>          <p><a href="U_Main.jsp"></a></p>

        <!-- ONLY ADDITION: scroll wrapper around your table -->
        <div class="table-scroll">
      <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>


<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>Vid	</strong></em></div></td>
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>from_location</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>supply_date</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>vaccine_name</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>total_vaccinations</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>Logistics</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>vaccine_date</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>street_name</strong></em></div></td>	
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>city</strong></em></div></td>
<td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center" class="style27 style105 style65 style2 style6 style24"><em><strong>Hash Code</strong></em></div></td>
            </tr>
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
 
					<%
 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28;
int i=0,count=0;
try 
{

    String keyword=request.getParameter("keyword");
  
	String query="select * from datasets  "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next() )
	{
		i=rs.getInt(1);
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3); //fl
								s3=rs.getString(4);
								s4=rs.getString(5); //vn
								s5=rs.getString(6);
								s6=rs.getString(7); //log
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10); //city
								s10=rs.getString(11);
								
							if(s2.toLowerCase().contains(keyword.toLowerCase()) || s4.toLowerCase().contains(keyword.toLowerCase()) ||s6.toLowerCase().contains(keyword.toLowerCase()) || s9.toLowerCase().contains(keyword.toLowerCase()))	
							{
			
		%>
					
							<tr bgcolor="#954535">
						
							 <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
			  <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s6);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s7);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s8);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s9);%>
              </strong></div></td>
			   <td  align="center"  valign="middle" bgcolor="#954535"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7 style22 style23"><strong>
                  <%out.println(s10);%>
              </strong></div></td>
					</tr>
					<%
					}
					
				
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
        </div>
      </p>
          <p align="center"><a href="U_Main.jsp">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
