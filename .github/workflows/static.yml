<!DOCTYPE html>
<html lang="sk">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebStudio SK — Webstránky pre slovenské firmy</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,300;12..96,400;12..96,500;12..96,700;12..96,800&family=DM+Sans:opsz,wght@9..40,300;9..40,400;9..40,500&display=swap" rel="stylesheet">
<style>
/* ─── RESET ─── */
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
img,svg{display:block;max-width:100%;}

/* ─── DESIGN TOKENS ─── */
:root{
  /* dark palette */
  --bg:       #07070d;
  --bg-2:     #0d0d17;
  --card:     rgba(255,255,255,0.03);
  --card-h:   rgba(255,255,255,0.055);
  --border:   rgba(255,255,255,0.08);
  --border-h: rgba(255,255,255,0.18);
  --text:     #f0f0f8;
  --text-2:   rgba(240,240,248,0.55);
  --text-3:   rgba(240,240,248,0.3);
  /* light palette */
  --lbg:      #f5f5fa;
  --lbg-2:    #ffffff;
  --lborder:  rgba(10,10,20,0.09);
  --ltext:    #0a0a14;
  --ltext-2:  #5a5a72;
  /* featured card */
  --feat-bg:  #0a0a14;
  /* nav */
  --nav-h:    60px;
  /* type */
  --display:  'Bricolage Grotesque', sans-serif;
  --body:     'DM Sans', sans-serif;
}

body{font-family:var(--body);background:var(--bg);color:var(--text);font-size:16px;line-height:1.6;overflow-x:hidden;}

/* ─── UTILITY ─── */
.tag{
  display:inline-flex;align-items:center;gap:.55rem;
  font-family:var(--display);font-size:.65rem;font-weight:700;
  letter-spacing:.2em;text-transform:uppercase;color:var(--text-3);
  margin-bottom:1.1rem;
}
.tag::before{content:'';width:1.2rem;height:1px;background:currentColor;flex-shrink:0;}
.tag.lgt{color:var(--ltext-2);}
.tag.lgt::before{background:var(--ltext-2);}

h2{
  font-family:var(--display);font-weight:800;
  letter-spacing:-.025em;line-height:1.05;
}
.h2-xl{font-size:clamp(2.2rem,3.8vw,4rem);}
.h2-lg{font-size:clamp(1.8rem,3vw,3.2rem);}
.h2-md{font-size:clamp(1.5rem,2.4vw,2.5rem);}
.ghost{color:var(--text-2);}
.ghost-l{color:var(--ltext-2);}

/* ─── BUTTONS ─── */
.btn{
  font-family:var(--display);font-size:.7rem;font-weight:700;
  letter-spacing:.12em;text-transform:uppercase;text-decoration:none;
  display:inline-flex;align-items:center;gap:.5rem;
  padding:.8rem 1.6rem;cursor:pointer;border:none;
  transition:all .22s ease;white-space:nowrap;
}
.btn-white{background:#fff;color:#0a0a14;}
.btn-white:hover{background:rgba(255,255,255,.85);}
.btn-outline-w{background:transparent;color:rgba(255,255,255,.7);border:1px solid rgba(255,255,255,.2);}
.btn-outline-w:hover{border-color:rgba(255,255,255,.55);color:#fff;}
.btn-dark{background:var(--ltext);color:#fff;border:1px solid var(--ltext);}
.btn-dark:hover{background:transparent;color:var(--ltext);}
.btn-outline-d{background:transparent;color:var(--ltext);border:1px solid rgba(10,10,20,.2);}
.btn-outline-d:hover{background:var(--ltext);color:#fff;}

/* ─── NAV ─── */
nav{
  position:fixed;top:0;left:0;right:0;z-index:300;
  height:var(--nav-h);
  display:flex;align-items:center;justify-content:space-between;
  padding:0 2rem;
  background:rgba(7,7,13,.7);
  backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);
  border-bottom:1px solid var(--border);
  transition:border-color .3s;
}
.logo{
  font-family:var(--display);font-size:.95rem;font-weight:800;
  letter-spacing:.04em;text-transform:uppercase;
  color:var(--text);text-decoration:none;
}
.logo em{font-style:normal;font-weight:300;opacity:.38;}
.nav-r{display:flex;align-items:center;gap:1.6rem;}
.nav-links{display:flex;gap:1.6rem;list-style:none;}
.nav-links a{
  font-family:var(--display);font-size:.68rem;font-weight:500;
  letter-spacing:.1em;text-transform:uppercase;
  text-decoration:none;color:var(--text-2);transition:color .2s;
}
.nav-links a:hover{color:var(--text);}
.nav-cta{
  font-family:var(--display);font-size:.68rem;font-weight:700;
  letter-spacing:.12em;text-transform:uppercase;
  text-decoration:none;color:var(--bg);background:var(--text);
  padding:.55rem 1.1rem;transition:opacity .2s;
}
.nav-cta:hover{opacity:.82;}
.ham{display:flex;flex-direction:column;justify-content:center;gap:5px;background:none;border:none;cursor:pointer;padding:6px;width:38px;height:38px;}
.ham span{display:block;width:20px;height:1.5px;background:var(--text);transition:.25s;}

/* ─── DRAWER ─── */
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.6);z-index:400;opacity:0;pointer-events:none;transition:opacity .3s;backdrop-filter:blur(4px);}
.overlay.on{opacity:1;pointer-events:all;}
.drawer{
  position:fixed;top:0;right:0;bottom:0;z-index:500;
  width:min(300px,88vw);
  background:rgba(10,10,18,.97);
  backdrop-filter:blur(24px);
  border-left:1px solid var(--border);
  transform:translateX(100%);
  transition:transform .32s cubic-bezier(.4,0,.2,1);
  display:flex;flex-direction:column;padding:1.6rem;
}
.drawer.on{transform:none;}
.drawer-top{display:flex;align-items:center;justify-content:space-between;margin-bottom:2.5rem;}
.drawer-logo{font-family:var(--display);font-size:.85rem;font-weight:800;letter-spacing:.05em;text-transform:uppercase;}
.close-btn{background:none;border:none;color:var(--text-2);font-size:1rem;cursor:pointer;line-height:1;padding:4px;}
.close-btn:hover{color:var(--text);}
.dnav{display:flex;flex-direction:column;flex:1;}
.dnav a{
  font-family:var(--display);font-size:.72rem;font-weight:600;
  letter-spacing:.14em;text-transform:uppercase;
  text-decoration:none;color:var(--text-2);
  padding:.95rem 0;border-bottom:1px solid var(--border);
  display:flex;align-items:center;justify-content:space-between;
  transition:color .2s;
}
.dnav a:hover{color:var(--text);}
.dnav a::after{content:'→';opacity:.3;font-size:.75rem;}
.drawer-foot{margin-top:1.8rem;}
.drawer-foot a{display:block;text-align:center;font-family:var(--display);font-size:.72rem;font-weight:700;letter-spacing:.14em;text-transform:uppercase;text-decoration:none;color:var(--bg);background:var(--text);padding:.9rem;transition:opacity .2s;}
.drawer-foot a:hover{opacity:.82;}

/* ─── SECTION WRAPPER ─── */
.s{padding:7rem 2rem;}

/* ─── HERO ─── */
.hero{
  background-color:var(--bg);
  background-image:
    radial-gradient(ellipse 90% 55% at 50% -5%,rgba(255,255,255,.06) 0%,transparent 100%),
    radial-gradient(rgba(255,255,255,.07) 1px,transparent 1px);
  background-size:100% 100%,28px 28px;
  padding-top:var(--nav-h);
  position:relative;overflow:hidden;
}
.hero-inner{
  display:grid;grid-template-columns:1fr 1fr;
  min-height:calc(100vh - var(--nav-h) - 82px);
  border-bottom:1px solid var(--border);
}
.hero-l{
  display:flex;flex-direction:column;justify-content:center;
  padding:4rem 2rem;
  border-right:1px solid var(--border);
}
.hero-eyebrow{
  font-family:var(--display);font-size:.65rem;font-weight:600;
  letter-spacing:.22em;text-transform:uppercase;color:var(--text-3);
  display:flex;align-items:center;gap:.8rem;margin-bottom:1.8rem;
}
.hero-eyebrow::before{content:'';width:1.6rem;height:1px;background:var(--text-3);flex-shrink:0;}
.hero h1{
  font-family:var(--display);font-weight:800;
  font-size:clamp(2.6rem,4.5vw,5.5rem);
  line-height:1.0;letter-spacing:-.03em;
  color:var(--text);
}
.hero h1 .fade{color:var(--text-2);}
.hero-r{
  display:flex;flex-direction:column;justify-content:center;
  padding:4rem 2rem;
}
.hero-desc{
  font-size:1.18rem;font-weight:300;
  color:var(--text-2);line-height:1.85;max-width:38ch;margin-bottom:2.2rem;
}
.hero-desc strong{color:var(--text);font-weight:500;}
.hero-btns{display:flex;gap:.8rem;flex-wrap:wrap;}
.hero-sub{
  font-size:1.05rem;font-weight:300;color:rgba(240,240,248,0.72);
  line-height:1.8;max-width:42ch;margin-top:1.8rem;
}
.hero-offer-tag{
  font-family:var(--display);font-size:.62rem;font-weight:700;
  letter-spacing:.2em;text-transform:uppercase;
  color:rgba(255,255,255,.45);margin-bottom:1rem;
}
.hero-offer-title{
  font-family:var(--display);font-weight:800;
  font-size:clamp(1.5rem,2.5vw,2.4rem);
  line-height:1.1;letter-spacing:-.025em;
  color:var(--text);margin-bottom:1.4rem;
}
/* stats bar */
.hero-stats{display:grid;grid-template-columns:repeat(3,1fr);}
.hstat{
  padding:1.4rem 2rem;
  border-right:1px solid var(--border);
}
.hstat:last-child{border-right:none;}
.hstat-n{
  font-family:var(--display);font-size:1.55rem;font-weight:800;
  letter-spacing:-.02em;color:var(--text);
  display:block;line-height:1.1;margin-bottom:.15rem;
}
.hstat-l{
  font-family:var(--display);font-size:.6rem;font-weight:500;
  letter-spacing:.14em;text-transform:uppercase;color:var(--text-3);
}

/* ─── WHY ─── */
.why{background:var(--lbg);}
.why-grid{display:grid;grid-template-columns:1fr 1fr;gap:4rem;margin-top:3.5rem;align-items:start;}
.why-copy p{font-size:.95rem;font-weight:300;line-height:1.88;color:var(--ltext-2);margin-top:1.4rem;}
.why-copy p+p{margin-top:.9rem;}
.why-copy p strong{color:var(--ltext);font-weight:500;}
.why-items{display:flex;flex-direction:column;}
.wi{
  padding:1.5rem 0;border-top:1px solid var(--lborder);
  display:grid;grid-template-columns:2rem 1fr;gap:1rem;
}
.wi:last-child{border-bottom:1px solid var(--lborder);}
.wi-n{font-family:var(--display);font-size:.6rem;font-weight:700;color:var(--ltext-2);letter-spacing:.1em;padding-top:.15rem;}
.wi h3{font-family:var(--display);font-size:.82rem;font-weight:700;letter-spacing:.02em;text-transform:uppercase;color:var(--ltext);margin-bottom:.35rem;}
.wi p{font-size:.84rem;font-weight:300;color:var(--ltext-2);line-height:1.78;}

/* ─── SERVICES ─── */
.services{background:var(--bg);}
.svc-grid{display:grid;grid-template-columns:repeat(3,1fr);margin-top:3.5rem;border:1px solid var(--border);}
.svc{
  padding:2.5rem 2rem;border-right:1px solid var(--border);
  position:relative;overflow:hidden;
  transition:background .25s;
  cursor:default;
}
.svc:last-child{border-right:none;}
.svc::before{/* shimmer top line */
  content:'';position:absolute;top:0;left:0;right:0;height:1px;
  background:linear-gradient(90deg,transparent 0%,rgba(255,255,255,.22) 50%,transparent 100%);
  opacity:0;transition:opacity .3s;
}
.svc:hover{background:var(--card-h);}
.svc:hover::before{opacity:1;}
.svc-num{font-family:var(--display);font-size:.6rem;font-weight:700;letter-spacing:.2em;text-transform:uppercase;color:var(--text-3);display:block;margin-bottom:1.4rem;}
.svc h3{font-family:var(--display);font-size:.92rem;font-weight:700;text-transform:uppercase;letter-spacing:.04em;margin-bottom:.85rem;color:var(--text);}
.svc p{font-size:.86rem;color:var(--text-2);font-weight:300;line-height:1.82;}

/* ─── PRICING ─── */
.pricing{background:var(--lbg);}
.pricing-head{display:grid;grid-template-columns:1fr 1fr;gap:3rem;align-items:end;margin-bottom:3.5rem;}
.pricing-head p{font-size:.92rem;font-weight:300;color:var(--ltext-2);line-height:1.88;margin-top:1.2rem;}
/* pricing card grid */
.pcards{
  display:grid;grid-template-columns:repeat(3,1fr);
  border:1px solid var(--lborder);background:var(--lbg-2);
}
.pc{
  padding:2.5rem 2rem;border-right:1px solid var(--lborder);
  display:flex;flex-direction:column;
  transition:background .2s;
}
.pc:last-child{border-right:none;}
.pc.hi{
  background:var(--feat-bg);
  border-color:var(--feat-bg);
  color:#fff;
  position:relative;
  box-shadow:0 0 0 1px rgba(255,255,255,.08),0 24px 64px rgba(0,0,0,.35);
  z-index:1;
}
/* badge */
.pc-badge{
  font-family:var(--display);font-size:.6rem;font-weight:700;
  letter-spacing:.2em;text-transform:uppercase;
  color:var(--ltext-2);display:block;margin-bottom:1.5rem;
}
.pc.hi .pc-badge{color:rgba(255,255,255,.4);}
/* price */
.pc-price{
  font-family:var(--display);font-size:2.8rem;font-weight:800;
  letter-spacing:-.04em;line-height:1;
  color:var(--ltext);display:block;
}
.pc.hi .pc-price{color:#fff;}
.pc-period{
  font-family:var(--display);font-size:.6rem;font-weight:600;
  letter-spacing:.14em;text-transform:uppercase;
  color:var(--ltext-2);display:block;margin-top:.28rem;margin-bottom:1.5rem;
}
.pc.hi .pc-period{color:rgba(255,255,255,.38);}
/* plan name */
.pc-name{
  font-family:var(--display);font-size:.88rem;font-weight:700;
  text-transform:uppercase;letter-spacing:.04em;
  color:var(--ltext);margin-bottom:.45rem;
}
.pc.hi .pc-name{color:#fff;}
.pc-desc{font-size:.83rem;font-weight:300;color:var(--ltext-2);line-height:1.78;margin-bottom:1.6rem;}
.pc.hi .pc-desc{color:rgba(255,255,255,.5);}
/* features */
.pc-feats{list-style:none;margin-bottom:2rem;flex:1;}
.pc-feats li{
  font-size:.82rem;font-weight:300;color:var(--ltext-2);
  padding:.5rem 0;border-bottom:1px solid var(--lborder);
  display:flex;align-items:flex-start;gap:.6rem;line-height:1.5;
}
.pc.hi .pc-feats li{color:rgba(255,255,255,.65);border-color:rgba(255,255,255,.08);}
.pc-feats li::before{content:'✓';font-family:var(--display);font-weight:700;font-size:.78rem;color:var(--ltext-2);flex-shrink:0;line-height:1.55;}
.pc.hi .pc-feats li::before{color:rgba(255,255,255,.35);}
/* cta */
.pc-cta{
  display:block;text-align:center;
  font-family:var(--display);font-size:.68rem;font-weight:700;
  letter-spacing:.14em;text-transform:uppercase;text-decoration:none;
  padding:.85rem;margin-top:auto;cursor:pointer;
  border:1px solid rgba(10,10,20,.2);color:var(--ltext);
  transition:background .2s,color .2s;
}
.pc-cta:hover{background:var(--ltext);color:#fff;}
.pc.hi .pc-cta{border-color:rgba(255,255,255,.3);color:#fff;}
.pc.hi .pc-cta:hover{background:#fff;color:var(--feat-bg);}

/* ─── COMPARE ─── */
.compare{background:var(--bg-2);border-top:1px solid var(--border);border-bottom:1px solid var(--border);}
.cmp-scroll{margin-top:3.5rem;overflow-x:auto;-webkit-overflow-scrolling:touch;}
.cmp{width:100%;border-collapse:collapse;min-width:620px;}
.cmp th,.cmp td{border:none;}
/* header row */
.cmp thead tr{border-bottom:1px solid var(--border);}
.cmp th{
  font-family:var(--display);font-size:.62rem;font-weight:700;
  letter-spacing:.14em;text-transform:uppercase;
  padding:1rem 1.3rem;text-align:center;
}
.cmp th:first-child{text-align:left;color:var(--text-3);font-size:.58rem;}
.cmp th.us{color:var(--text);background:rgba(255,255,255,.06);}
.cmp th.ot{color:var(--text-3);}
/* body rows */
.cmp tbody tr{border-bottom:1px solid var(--border);}
.cmp tbody tr:last-child{border-bottom:none;}
.cmp tbody tr:hover td{background:rgba(255,255,255,.02);}
.cmp td.row-lbl{
  font-family:var(--display);font-size:.7rem;font-weight:600;
  letter-spacing:.08em;text-transform:uppercase;
  color:var(--text-2);padding:1rem 1.3rem;text-align:left;
}
.cmp td.cell{text-align:center;padding:1rem 1.3rem;font-size:.82rem;font-weight:300;color:var(--text-3);}
.cmp td.cell.us{background:rgba(255,255,255,.04);color:var(--text);font-weight:500;}
.ck{color:#7fff7f;font-size:.9rem;}
.cx{color:rgba(255,255,255,.18);font-size:.9rem;}
.cm{color:rgba(255,255,255,.38);font-size:.9rem;}

/* ─── MAINTENANCE ─── */
.maint{background:var(--lbg);}
.maint-intro{font-size:.93rem;font-weight:300;color:var(--ltext-2);line-height:1.88;max-width:60ch;margin-top:1.2rem;}
.maint-intro strong{color:var(--ltext);font-weight:500;}
.maint-note{
  display:flex;gap:.8rem;align-items:flex-start;
  margin-top:1.5rem;margin-bottom:3rem;
  padding:1.1rem 1.3rem;
  border:1px solid var(--lborder);background:rgba(10,10,20,.04);
}
.maint-i{font-family:var(--display);font-size:.58rem;font-weight:700;letter-spacing:.16em;color:var(--ltext-2);flex-shrink:0;padding-top:.05rem;}
.maint-note p{font-size:.81rem;font-weight:300;color:var(--ltext-2);line-height:1.72;}
/* maint cards 2x2 — reuse .pc classes with lborder */
.mc-grid{display:grid;grid-template-columns:repeat(2,1fr);border:1px solid var(--lborder);background:var(--lbg-2);}
.mc-grid .pc{border-right:1px solid var(--lborder);border-bottom:1px solid var(--lborder);}
.mc-grid .pc:nth-child(2){border-right:none;}
.mc-grid .pc:nth-child(3){border-bottom:none;}
.mc-grid .pc:nth-child(4){border-right:none;border-bottom:none;}

/* ─── PROCESS ─── */
.process{background:var(--bg);}
.proc-grid{display:grid;grid-template-columns:repeat(4,1fr);margin-top:3.5rem;border:1px solid var(--border);}
.pstep{padding:2.2rem 1.8rem;border-right:1px solid var(--border);}
.pstep:last-child{border-right:none;}
.pstep-n{
  font-family:var(--display);font-size:2.2rem;font-weight:800;
  color:rgba(255,255,255,.07);letter-spacing:-.03em;
  display:block;margin-bottom:1.2rem;line-height:1;
}
.pstep h3{
  font-family:var(--display);font-size:.78rem;font-weight:700;
  text-transform:uppercase;letter-spacing:.1em;
  color:var(--text);margin-bottom:.65rem;
}
.pstep p{font-size:.84rem;font-weight:300;color:var(--text-2);line-height:1.82;}

/* ─── TRUST ─── */
.trust{background:var(--lbg);}
.trust-grid{display:grid;grid-template-columns:1fr 1fr;gap:4.5rem;margin-top:3.5rem;align-items:start;}
.tpts{display:flex;flex-direction:column;}
.tpt{
  padding:1.3rem 0;border-top:1px solid var(--lborder);
  display:grid;grid-template-columns:1.4rem 1fr;gap:.9rem;
}
.tpt:last-child{border-bottom:1px solid var(--lborder);}
.tck{font-family:var(--display);font-size:.7rem;font-weight:700;color:var(--ltext);padding-top:.12rem;}
.tpt p{font-size:.86rem;font-weight:300;color:var(--ltext-2);line-height:1.78;}
.tpt strong{font-weight:600;color:var(--ltext);}
/* quote card */
.tquote{
  background:var(--feat-bg);padding:2.8rem;position:relative;overflow:hidden;
  border:1px solid rgba(255,255,255,.07);
}
.tquote::before{
  content:'"';font-family:var(--display);font-size:9rem;font-weight:800;
  line-height:.7;color:rgba(255,255,255,.04);
  position:absolute;top:1.2rem;left:1.6rem;pointer-events:none;
}
.tquote blockquote{
  font-size:1.05rem;font-weight:300;font-style:italic;
  line-height:1.72;color:rgba(255,255,255,.88);
  position:relative;z-index:1;margin-bottom:1.6rem;
}
.qa{font-family:var(--display);font-size:.6rem;letter-spacing:.16em;text-transform:uppercase;color:rgba(255,255,255,.3);}

/* ─── CTA BAND ─── */
.ctaband{
  background:var(--bg);
  padding:5.5rem 2rem;
  display:grid;grid-template-columns:1fr auto;gap:3rem;align-items:center;
  border-top:1px solid var(--border);
}
.ctaband-r{display:flex;flex-direction:column;align-items:flex-end;gap:1.1rem;}
.ctaband-r p{font-size:.84rem;font-weight:300;color:var(--text-2);text-align:right;max-width:26ch;line-height:1.65;}
.cta-row{display:flex;gap:.8rem;flex-wrap:wrap;justify-content:flex-end;}

/* ─── CONTACT ─── */
.contact{background:var(--lbg);}
.contact-grid{display:grid;grid-template-columns:1fr 1.4fr;gap:5rem;margin-top:3.5rem;align-items:start;}
.cinfo h3{font-family:var(--display);font-size:.88rem;font-weight:700;text-transform:uppercase;letter-spacing:.05em;color:var(--ltext);margin-bottom:1rem;}
.cinfo>p{font-size:.88rem;font-weight:300;color:var(--ltext-2);line-height:1.88;margin-bottom:2rem;}
.clines{display:flex;flex-direction:column;gap:.9rem;}
.cl{display:flex;align-items:center;gap:1rem;font-size:.88rem;font-weight:300;color:var(--ltext-2);text-decoration:none;transition:color .2s;}
.cl:hover{color:var(--ltext);}
.cl-lbl{font-family:var(--display);font-size:.56rem;font-weight:700;letter-spacing:.18em;text-transform:uppercase;color:var(--ltext-2);width:3rem;flex-shrink:0;}
/* form */
.cf{display:flex;flex-direction:column;gap:.95rem;}
.cf-row{display:grid;grid-template-columns:1fr 1fr;gap:.9rem;}
.cfg{display:flex;flex-direction:column;gap:.3rem;}
label{font-family:var(--display);font-size:.58rem;font-weight:700;letter-spacing:.16em;text-transform:uppercase;color:var(--ltext-2);}
input,textarea,select{
  padding:.75rem .85rem;border:1px solid var(--lborder);
  background:var(--lbg-2);font-family:var(--body);
  font-size:.86rem;font-weight:300;color:var(--ltext);
  outline:none;transition:border-color .2s;
  -webkit-appearance:none;appearance:none;width:100%;
}
input::placeholder,textarea::placeholder{color:#b8b8c8;}
input:focus,textarea:focus,select:focus{border-color:var(--ltext);}
textarea{resize:vertical;min-height:6.5rem;}
.cf-foot{display:flex;align-items:center;gap:1.3rem;flex-wrap:wrap;margin-top:.2rem;}
.cf-note{font-size:.75rem;color:#b0b0c0;font-weight:300;}
.cf-sub{
  background:var(--ltext);color:#fff;border:1px solid var(--ltext);
  padding:.8rem 1.8rem;font-family:var(--display);font-size:.68rem;font-weight:700;
  letter-spacing:.14em;text-transform:uppercase;cursor:pointer;
  transition:background .2s,color .2s;
}
.cf-sub:hover{background:transparent;color:var(--ltext);}
#fok{
  display:none;font-family:var(--display);font-size:.68rem;font-weight:700;
  letter-spacing:.12em;text-transform:uppercase;color:var(--ltext);
}

/* ─── FOOTER ─── */
footer{
  background:var(--bg);padding:1.8rem 2rem;
  display:flex;align-items:center;justify-content:space-between;
  font-family:var(--display);font-size:.6rem;font-weight:600;
  letter-spacing:.12em;text-transform:uppercase;color:var(--text-3);
  border-top:1px solid var(--border);
}

/* ─── FADE-UP ─── */
.fu{opacity:0;transform:translateY(18px);transition:opacity .65s ease,transform .65s ease;}
.fu.on{opacity:1;transform:none;}
.fu:nth-child(2){transition-delay:.08s;}
.fu:nth-child(3){transition-delay:.16s;}
.fu:nth-child(4){transition-delay:.24s;}

/* ─── RESPONSIVE ─── */
@media(max-width:900px){
  .nav-links{display:none;}
  .s{padding:4.5rem 1.5rem;}
  .hero-inner{grid-template-columns:1fr;min-height:auto;}
  .hero-l{padding:3.5rem 1.5rem 2rem;border-right:none;border-bottom:1px solid var(--border);}
  .hero-r{padding:2rem 1.5rem 2.5rem;}
  .hero-stats{grid-template-columns:1fr 1fr;}
  .hstat{padding:1.2rem 1.5rem;}
  .hstat:nth-child(3){grid-column:1/-1;border-top:1px solid var(--border);border-right:none;}
  .why-grid{grid-template-columns:1fr;gap:2.5rem;}
  .svc-grid{grid-template-columns:1fr;}
  .svc{border-right:none;border-bottom:1px solid var(--border);}
  .svc:last-child{border-bottom:none;}
  .pricing-head{grid-template-columns:1fr;gap:1.5rem;}
  .pcards{grid-template-columns:1fr;}
  .pc{border-right:none;border-bottom:1px solid var(--lborder);}
  .pc:last-child{border-bottom:none;}
  .mc-grid{grid-template-columns:1fr;}
  .mc-grid .pc{border-right:none;border-bottom:1px solid var(--lborder) !important;}
  .mc-grid .pc:last-child{border-bottom:none !important;}
  .proc-grid{grid-template-columns:1fr 1fr;}
  .pstep:nth-child(2){border-right:none;}
  .pstep:nth-child(3){border-top:1px solid var(--border);}
  .trust-grid{grid-template-columns:1fr;gap:2.5rem;}
  .ctaband{grid-template-columns:1fr;padding:4rem 1.5rem;gap:2rem;}
  .ctaband-r{align-items:flex-start;}
  .ctaband-r p{text-align:left;}
  .cta-row{justify-content:flex-start;}
  .contact-grid{grid-template-columns:1fr;gap:2.5rem;}
  .cf-row{grid-template-columns:1fr;}
  footer{flex-direction:column;gap:.5rem;text-align:center;padding:1.5rem;}
}
@media(max-width:500px){
  .hero h1{font-size:2.2rem;}
  .proc-grid{grid-template-columns:1fr;}
  .pstep{border-right:none;border-bottom:1px solid var(--border);}
  .pstep:last-child{border-bottom:none;}
}
</style>
</head>
<body>

<!-- NAV -->
<nav id="top">
  <a href="#top" class="logo">WebStudio<em>&nbsp;SK</em></a>
  <div class="nav-r">
    <ul class="nav-links">
      <li><a href="#preco">Prečo my</a></li>
      <li><a href="#ceny">Cenník</a></li>
      <li><a href="#porovnanie">Porovnanie</a></li>
      <li><a href="#sprava">Správa</a></li>
      <li><a href="#kontakt">Kontakt</a></li>
    </ul>
    <a href="#kontakt" class="nav-cta">Dopyt zadarmo</a>
    <button class="ham" onclick="openD()" aria-label="Menu">
      <span></span><span></span><span></span>
    </button>
  </div>
</nav>

<!-- OVERLAY + DRAWER -->
<div class="overlay" id="ov" onclick="closeD()"></div>
<div class="drawer" id="dr">
  <div class="drawer-top">
    <span class="drawer-logo">WebStudio SK</span>
    <button class="close-btn" onclick="closeD()">✕</button>
  </div>
  <nav class="dnav">
    <a href="#preco"       onclick="closeD()">Prečo my</a>
    <a href="#sluzby"      onclick="closeD()">Služby</a>
    <a href="#ceny"        onclick="closeD()">Cenník</a>
    <a href="#porovnanie"  onclick="closeD()">Porovnanie</a>
    <a href="#sprava"      onclick="closeD()">Správa webu</a>
    <a href="#postup"      onclick="closeD()">Postup</a>
    <a href="#kontakt"     onclick="closeD()">Kontakt</a>
  </nav>
  <div class="drawer-foot">
    <a href="#kontakt" onclick="closeD()">Chcem cenovú ponuku</a>
  </div>
</div>

<!-- HERO -->
<header class="hero">
  <div class="hero-inner">
    <div class="hero-l">
      <div class="hero-eyebrow">Webstránky pre slovenské firmy — od 500 €</div>
      <h1>
        Weby, ktoré<br>
        predávajú.<br>
        <span class="fade">Nie len vyzerajú.</span>
      </h1>
      <p class="hero-sub">Pomáhame malým a stredným firmám na Slovensku dostať sa online — s webom, ktorý zákazníkov skutočne presvedčí.</p>
    </div>
    <div class="hero-r">
      <p class="hero-desc">
        Profesionálna webstránka <strong>nemusí stáť tisíce eur</strong> ani trvať mesiace.
        Pomáhame malým a stredným firmám dostať sa na internet — rýchlo, jednoducho a za jasnú cenu.
      </p>
      <div class="hero-btns">
        <a href="#kontakt" class="btn btn-white">Chcem cenovú ponuku</a>
        <a href="#ceny"    class="btn btn-outline-w">Pozrieť ceny</a>
      </div>
    </div>
  </div>
  <div class="hero-stats">
    <div class="hstat">
      <span class="hstat-n">od 500 €</span>
      <span class="hstat-l">Cena základnej stránky</span>
    </div>
    <div class="hstat">
      <span class="hstat-n">2–3 týždne</span>
      <span class="hstat-l">Priemerná doba realizácie</span>
    </div>
    <div class="hstat">
      <span class="hstat-n">24 hodín</span>
      <span class="hstat-l">Maximálna odozva</span>
    </div>
  </div>
</header>

<!-- WHY -->
<section class="s why" id="preco">
  <div class="tag lgt">Prečo my</div>
  <h2 class="h2-xl" style="color:var(--ltext);">Web, ktorý<br><span class="ghost-l">pracuje za vás.</span></h2>
  <div class="why-grid">
    <div class="why-copy">
      <p>Väčšina malých firiem vie, že webstránku potrebuje — no netuší, kde začať. Agentúry sú drahé, freelanceri nespoľahliví a šablóny nevyzerajú profesionálne.</p>
      <p>My robíme jednu vec a robíme ju dobre: <strong>jednoduché, čisté a funkčné weby pre slovenské firmy.</strong> Celý proces prebieha online — rýchlo a bez zbytočného zdržania.</p>
    </div>
    <div class="why-items">
      <div class="wi fu">
        <span class="wi-n">01</span>
        <div>
          <h3>Fixná cena bez prekvapení</h3>
          <p>Žiadne hodinové sadzby ani skryté poplatky. Dohodneme cenu vopred a tú aj zaplatíte.</p>
        </div>
      </div>
      <div class="wi fu">
        <span class="wi-n">02</span>
        <div>
          <h3>Všetko vybavíte online</h3>
          <p>Konzultácia, návrh, schválenie aj odovzdanie — celý proces prebieha online, rýchlo a pohodlne.</p>
        </div>
      </div>
      <div class="wi fu">
        <span class="wi-n">03</span>
        <div>
          <h3>Hotovo za 2–3 týždne</h3>
          <p>Žiadne mesiace čakania. Dostanete funkčný web rýchlo, aby ste mohli začať získavať zákazníkov.</p>
        </div>
      </div>
      <div class="wi fu">
        <span class="wi-n">04</span>
        <div>
          <h3>Odpovieme do 24 hodín</h3>
          <p>Ste v dobrej komunikácii počas celého projektu. Žiadne dlhé čakanie na odpoveď.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- SERVICES -->
<section class="s services" id="sluzby">
  <div class="tag">Čo robíme</div>
  <h2 class="h2-xl">Weby, ktoré <span class="ghost">fungujú.</span></h2>
  <div class="svc-grid" style="grid-template-columns:repeat(2,1fr);">
    <div class="svc">
      <span class="svc-num">[ 01 ] — Prezentácia</span>
      <h3>Firemná webstránka</h3>
      <p>Váš digitálny vizitník — čistý, profesionálny, dôveryhodný. Ideálne pre živnostníkov, remeselníkov, poradcov a lokálne firmy. Zákazníci vás nájdu a okamžite vedia, komu zavolať.</p>
    </div>
    <div class="svc">
      <span class="svc-num">[ 02 ] — E-commerce</span>
      <h3>Online obchod</h3>
      <p>Predávajte produkty online 24/7. Jednoduchý e-shop s platobnou bránou, správou objednávok a produktovým katalógom — vhodný pre menšie sortimenty.</p>
    </div>
    <div class="svc" style="border-top:1px solid var(--border);border-right:1px solid var(--border);">
      <span class="svc-num">[ 03 ] — Aktualizácie</span>
      <h3>Úpravy existujúceho webu</h3>
      <p>Máte starý web, ktorý vyzerá zle alebo nefunguje správne? Osvežíme ho a zabezpečíme, že bude perfektne fungovať na všetkých zariadeniach.</p>
    </div>
    <div class="svc svc-featured" style="border-top:1px solid var(--border);">
      <span class="svc-num">[ 04 ] — Nová služba ✦</span>
      <h3>Landing Page Redesign<br><span style="opacity:.5;font-weight:400;">+ Marketingové video</span></h3>
      <p>Váš starý web dostane <strong style="color:var(--text);">poctivý roast</strong> — úprimná analýza toho, čo zákazníkov odháňa a prečo nekupujú. Potom ho prerobíme od základu: nový dizajn, jasná správa a krátke marketingové video, ktoré ukáže premenu starého webu na nový. Výsledok je landing page, ktorá predáva.</p>
      <p style="margin-top:1rem;font-family:var(--display);font-size:1.4rem;font-weight:800;letter-spacing:-.02em;color:var(--text);">800 €</p>
      <a href="#kontakt" class="btn btn-outline-w" style="margin-top:1.6rem;width:fit-content;font-size:.65rem;">Chcem roast môjho webu →</a>
    </div>
  </div>
</section>

<!-- PRICING -->
<section class="s pricing" id="ceny">
  <div class="pricing-head">
    <div>
      <div class="tag lgt">Cenník</div>
      <h2 class="h2-xl" style="color:var(--ltext);">Jasné ceny.<br><span class="ghost-l">Žiadne prekvapenia.</span></h2>
    </div>
    <p>Naše ceny sú fixné — dohodnuté vopred, nie fakturované po hodinách. Vyberáte len to, čo skutočne potrebujete. Všetky plány zahŕňajú doménu a hosting na prvý rok.</p>
  </div>
  <div class="pcards" style="grid-template-columns:repeat(4,1fr);">
    <!-- card 1 -->
    <div class="pc">
      <span class="pc-badge">Štart</span>
      <span class="pc-price">500 €</span>
      <span class="pc-period">Jednorazová platba</span>
      <div class="pc-name">Základný web</div>
      <p class="pc-desc">Pre živnostníkov a malé firmy, ktoré chcú byť online a pôsobiť dôveryhodne.</p>
      <ul class="pc-feats">
        <li>Až 5 podstránok</li>
        <li>Responzívny dizajn — mobil aj počítač</li>
        <li>Kontaktný formulár</li>
        <li>Prepojenie so sociálnymi sieťami</li>
        <li>Základná SEO optimalizácia</li>
        <li>Doména a hosting na 1 rok</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Chcem cenovú ponuku</a>
    </div>
    <!-- card 2 FEATURED -->
    <div class="pc hi">
      <span class="pc-badge">★ Najpopulárnejší</span>
      <span class="pc-price">700 €</span>
      <span class="pc-period">Jednorazová platba</span>
      <div class="pc-name">Rozšírený web</div>
      <p class="pc-desc">Pre firmy, ktoré chcú galériu prác, blog alebo sekciu aktualít.</p>
      <ul class="pc-feats">
        <li>Až 10 podstránok</li>
        <li>Galéria fotografií a referencií</li>
        <li>Blog alebo sekcia noviniek</li>
        <li>Google Maps integrácia</li>
        <li>Pokročilá SEO optimalizácia</li>
        <li>Analytika návštevnosti</li>
        <li>Doména a hosting na 1 rok</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Chcem cenovú ponuku</a>
    </div>
    <!-- card 3 -->
    <div class="pc">
      <span class="pc-badge">E-shop</span>
      <span class="pc-price">1 000 €</span>
      <span class="pc-period">Jednorazová platba</span>
      <div class="pc-name">Online obchod</div>
      <p class="pc-desc">Pre firmy, ktoré chcú predávať produkty priamo cez internet.</p>
      <ul class="pc-feats">
        <li>Produktový katalóg</li>
        <li>Nákupný košík a pokladňa</li>
        <li>Online platby (karta, bankový prevod)</li>
        <li>Správa objednávok</li>
        <li>Napojenie na Packeta / Zásilkovňa</li>
        <li>Zaškolenie na správu e-shopu</li>
        <li>Doména a hosting na 1 rok</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Chcem cenovú ponuku</a>
    </div>
    <!-- card 4 — Redesign -->
    <div class="pc">
      <span class="pc-badge">✦ Nová služba</span>
      <span class="pc-price">800 €</span>
      <span class="pc-period">Jednorazová platba</span>
      <div class="pc-name">Landing Page Redesign + Video</div>
      <p class="pc-desc">Roast starého webu, kompletná premena a marketingové video — všetko v jednom.</p>
      <ul class="pc-feats">
        <li>Analýza a roast existujúceho webu</li>
        <li>Nový dizajn landing page</li>
        <li>Jasná marketingová správa</li>
        <li>Krátke marketingové video (premena)</li>
        <li>Responzívny dizajn</li>
        <li>Doména a hosting na 1 rok</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Chcem roast môjho webu</a>
    </div>
  </div>
</section>

<!-- COMPARE -->
<section class="s compare" id="porovnanie">
  <div class="tag">Prečo práve my</div>
  <h2 class="h2-xl">My vs. <span class="ghost">alternatívy.</span></h2>
  <div class="cmp-scroll">
    <table class="cmp">
      <thead>
        <tr>
          <th></th>
          <th class="us">WebStudio SK</th>
          <th class="ot">Veľká agentúra</th>
          <th class="ot">Freelancer</th>
          <th class="ot">Šablóna (Wix…)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="row-lbl">Cena</td>
          <td class="cell us">od 500 €</td>
          <td class="cell">3 000 €+</td>
          <td class="cell">nejasná</td>
          <td class="cell">mesačný poplatok</td>
        </tr>
        <tr>
          <td class="row-lbl">Doba realizácie</td>
          <td class="cell us">2–3 týždne</td>
          <td class="cell">2–3 mesiace</td>
          <td class="cell">neistá</td>
          <td class="cell">ihneď, ale obmedzene</td>
        </tr>
        <tr>
          <td class="row-lbl">Dizajn na mieru</td>
          <td class="cell us"><span class="ck">✓</span></td>
          <td class="cell"><span class="ck">✓</span></td>
          <td class="cell"><span class="cm">~</span></td>
          <td class="cell"><span class="cx">✗</span></td>
        </tr>
        <tr>
          <td class="row-lbl">Fixná cena vopred</td>
          <td class="cell us"><span class="ck">✓</span></td>
          <td class="cell"><span class="cx">✗</span></td>
          <td class="cell"><span class="cx">✗</span></td>
          <td class="cell"><span class="cm">~</span></td>
        </tr>
        <tr>
          <td class="row-lbl">Priama komunikácia</td>
          <td class="cell us"><span class="ck">✓</span></td>
          <td class="cell"><span class="cx">✗</span></td>
          <td class="cell"><span class="cm">~</span></td>
          <td class="cell"><span class="cx">✗</span></td>
        </tr>
        <tr>
          <td class="row-lbl">Celý proces online</td>
          <td class="cell us"><span class="ck">✓</span></td>
          <td class="cell"><span class="cx">✗</span></td>
          <td class="cell"><span class="cm">~</span></td>
          <td class="cell"><span class="ck">✓</span></td>
        </tr>
        <tr>
          <td class="row-lbl">Podpora po odovzdaní</td>
          <td class="cell us"><span class="ck">✓</span></td>
          <td class="cell">+ extra poplatok</td>
          <td class="cell"><span class="cm">~</span></td>
          <td class="cell"><span class="cx">✗</span></td>
        </tr>
        <tr>
          <td class="row-lbl">Správa webu</td>
          <td class="cell us">voliteľná od 25 €</td>
          <td class="cell">drahá</td>
          <td class="cell"><span class="cx">✗</span></td>
          <td class="cell">obmedzená</td>
        </tr>
      </tbody>
    </table>
  </div>
</section>

<!-- MAINTENANCE -->
<section class="s maint" id="sprava">
  <div class="tag lgt">Voliteľná služba</div>
  <h2 class="h2-xl" style="color:var(--ltext);">Správa webu<br><span class="ghost-l">po spustení.</span></h2>
  <p class="maint-intro">
    Správa webu <strong>nie je súčasťou základných plánov</strong> — po odovzdaní môžete web spravovať sami.
    Ak to nechcete riešiť, postaráme sa o to za vás.
    Cena závisí od toho, čo konkrétne potrebujete — zmena telefónneho čísla je pár minút,
    pridanie desiatky produktov s popismi je iná práca.
    Preto nefixujeme jednu sumu pre každého — dohodneme plán <strong>presne podľa vašich potrieb, za férovú cenu.</strong>
  </p>
  <div class="maint-note">
    <span class="maint-i">i</span>
    <p>Konzultácia je bezplatná. Napíšte nám, čo by ste potrebovali meniť a ako často — a my vám navrhneme cenu bez záväzku.</p>
  </div>
  <div class="mc-grid">
    <div class="pc">
      <span class="pc-badge">Jednorazovo</span>
      <span class="pc-price">od 10 €</span>
      <span class="pc-period">za úpravu</span>
      <div class="pc-name">Malé úpravy</div>
      <p class="pc-desc">Zmena textu, kontaktných údajov, obrázkov. Rýchlo a bez záväzkov.</p>
      <ul class="pc-feats">
        <li>Zmena kontaktných údajov</li>
        <li>Úprava textov alebo obrázkov</li>
        <li>Drobné vizuálne zmeny</li>
        <li>Cena podľa rozsahu úpravy</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Spýtať sa na cenu</a>
    </div>
    <div class="pc">
      <span class="pc-badge">Mesačne — Základ</span>
      <span class="pc-price">od 25 €</span>
      <span class="pc-period">mesačne</span>
      <div class="pc-name">Správa webu</div>
      <p class="pc-desc">Pravidelné aktualizácie a kontrola funkčnosti. Vhodné pre prezentačné weby.</p>
      <ul class="pc-feats">
        <li>Pravidelné drobné aktualizácie</li>
        <li>Bezpečnostné zálohy</li>
        <li>Kontrola funkčnosti webu</li>
        <li>Mesačný prehľad zmien</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Spýtať sa na cenu</a>
    </div>
    <div class="pc">
      <span class="pc-badge">Mesačne — E-shop</span>
      <span class="pc-price">od 50 €</span>
      <span class="pc-period">mesačne</span>
      <div class="pc-name">Správa e-shopu</div>
      <p class="pc-desc">Pridávanie produktov, aktualizácia cien, správa objednávok — vy sa venujete biznisu.</p>
      <ul class="pc-feats">
        <li>Pridávanie a úprava produktov</li>
        <li>Aktualizácia cien a zásob</li>
        <li>Správa objednávok</li>
        <li>Cena podľa počtu produktov</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Spýtať sa na cenu</a>
    </div>
    <div class="pc">
      <span class="pc-badge">Individuálne</span>
      <span class="pc-price">na dopyt</span>
      <span class="pc-period">podľa rozsahu</span>
      <div class="pc-name">Vlastný plán</div>
      <p class="pc-desc">Nové sekcie, dizajnové zmeny, SEO alebo čokoľvek špecifické — dohodnoute sa s nami.</p>
      <ul class="pc-feats">
        <li>Nové sekcie alebo stránky</li>
        <li>Čiastočný redesign</li>
        <li>SEO aktualizácie</li>
        <li>Čokoľvek iné — stačí opísať</li>
      </ul>
      <a href="#kontakt" class="pc-cta">Spýtať sa na cenu</a>
    </div>
  </div>
</section>

<!-- PROCESS -->
<section class="s process" id="postup">
  <div class="tag">Ako to funguje</div>
  <h2 class="h2-xl">Štyri kroky<br><span class="ghost">k vášmu webu.</span></h2>
  <div class="proc-grid">
    <div class="pstep fu">
      <span class="pstep-n">01</span>
      <h3>Bezplatná konzultácia</h3>
      <p>Napíšte nám alebo zavolajte. Zistíme, čo potrebujete, a navrhneme najvhodnejšie riešenie — online, bez záväzku.</p>
    </div>
    <div class="pstep fu">
      <span class="pstep-n">02</span>
      <h3>Návrh & dizajn</h3>
      <p>Pripravíme návrh webu podľa vašich predstáv a pošleme vám ho na schválenie. Zapracujeme vaše pripomienky.</p>
    </div>
    <div class="pstep fu">
      <span class="pstep-n">03</span>
      <h3>Vývoj & testovanie</h3>
      <p>Prevedieme návrh do funkčnej webstránky. Otestujeme ju na rôznych zariadeniach a prehliadačoch.</p>
    </div>
    <div class="pstep fu">
      <span class="pstep-n">04</span>
      <h3>Spustenie & podpora</h3>
      <p>Web spustíme online, nastavíme všetko potrebné a zostaneme k dispozícii aj po odovzdaní projektu.</p>
    </div>
  </div>
</section>

<!-- TRUST -->
<section class="s trust">
  <div class="tag lgt">Prečo nám veriť</div>
  <h2 class="h2-xl" style="color:var(--ltext);">Webstránka je<br><span class="ghost-l">investícia, nie výdavok.</span></h2>
  <div class="trust-grid">
    <div class="tpts">
      <div class="tpt fu">
        <span class="tck">✓</span>
        <p><strong>Zákazníci vás nájdu na Googli.</strong> 76 % ľudí si firmu pred návštevou vyhľadá online. Bez webu jednoducho neexistujete.</p>
      </div>
      <div class="tpt fu">
        <span class="tck">✓</span>
        <p><strong>Pôsobíte dôveryhodne.</strong> Profesionálny web dáva zákazníkom istotu, že ste seriózna firma — nie niekto z inzerátu.</p>
      </div>
      <div class="tpt fu">
        <span class="tck">✓</span>
        <p><strong>Pracuje za vás 24/7.</strong> Web preberá zákazníkov, prezentuje služby a odpovedá na otázky — aj keď vy spíte.</p>
      </div>
      <div class="tpt fu">
        <span class="tck">✓</span>
        <p><strong>Fixná cena, žiadne skryté poplatky.</strong> Dohodneme sumu vopred a tú aj zaplatíte — bez prekvapení na konci projektu.</p>
      </div>
    </div>
    <div class="tquote fu">
      <blockquote>Mysleli sme si, že webstránka je luxus. Po spustení nám prišli prvé dopyty do týždňa. Teraz viem, že to bola najlepšia investícia, akú sme urobili.</blockquote>
      <span class="qa">— Majiteľ malej firmy, Trenčín</span>
    </div>
  </div>
</section>

<!-- CTA BAND -->
<section class="ctaband">
  <div>
    <div class="tag">Začnime</div>
    <h2 class="h2-lg" style="margin-top:.7rem;">Poďme na to<br><span class="ghost">spolu.</span></h2>
  </div>
  <div class="ctaband-r">
    <p>Bezplatná konzultácia. Žiadny záväzok. Zistite, čo by web urobil pre vaše podnikanie.</p>
    <div class="cta-row">
      <a href="#kontakt"          class="btn btn-white">Kontaktujte nás</a>
      <a href="tel:+421949098191" class="btn btn-outline-w">Zavolajte nám</a>
    </div>
  </div>
</section>

<!-- CONTACT -->
<section class="s contact" id="kontakt">
  <div class="tag lgt">Kontakt</div>
  <h2 class="h2-xl" style="color:var(--ltext);">Napíšte nám.<br><span class="ghost-l">Odpovieme do 24 hodín.</span></h2>
  <div class="contact-grid">
    <div class="cinfo">
      <h3>Radi vám poradíme.</h3>
      <p>Nie ste si istí, čo presne potrebujete? Žiadny problém — opíšte nám vašu firmu a my navrhneme to najvhodnejšie riešenie. Bezplatne a bez záväzku.</p>
      <div class="clines">
        <a href="tel:+421949098191"          class="cl"><span class="cl-lbl">Tel</span>0949 098 191</a>
        <a href="mailto:matesa.paska@gmail.com" class="cl"><span class="cl-lbl">Email</span>matesa.paska@gmail.com</a>
        <span class="cl"><span class="cl-lbl">Kde</span>Slovenská republika</span>
      </div>
    </div>
    <form class="cf" onsubmit="doSubmit(event)">
      <div class="cf-row">
        <div class="cfg">
          <label for="fn">Meno a priezvisko</label>
          <input type="text" id="fn" placeholder="Ján Novák" required>
        </div>
        <div class="cfg">
          <label for="fc">Firma</label>
          <input type="text" id="fc" placeholder="Moja s.r.o.">
        </div>
      </div>
      <div class="cf-row">
        <div class="cfg">
          <label for="fe">E-mail</label>
          <input type="email" id="fe" placeholder="jan@firma.sk" required>
        </div>
        <div class="cfg">
          <label for="fp">Telefón</label>
          <input type="tel" id="fp" placeholder="+421 9XX XXX XXX">
        </div>
      </div>
      <div class="cfg">
        <label for="fs">Mám záujem o</label>
        <select id="fs">
          <option value="">— Vyberte službu —</option>
          <option>Základný web (500 €)</option>
          <option>Rozšírený web (700 €)</option>
          <option>Online obchod (1 000 €)</option>
          <option>Landing Page Redesign + video</option>
          <option>Správa / údržba webu</option>
          <option>Nie som si istý/á — poradíte mi?</option>
        </select>
      </div>
      <div class="cfg">
        <label for="fm">Správa</label>
        <textarea id="fm" placeholder="Čo robí vaša firma? Čo by ste od webu chceli?"></textarea>
      </div>
      <div class="cf-foot">
        <button type="submit" class="cf-sub">Odoslať dopyt</button>
        <span class="cf-note">Bezplatné a bez záväzku.</span>
      </div>
      <div id="fok">✓ Ďakujeme — ozveme sa do 24 hodín.</div>
    </form>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <span>© 2025 WebStudio SK — matesa.paska@gmail.com — 0949 098 191</span>
  <span>Webstránky pre slovenské firmy</span>
</footer>

<script>
/* drawer */
function openD(){document.getElementById('dr').classList.add('on');document.getElementById('ov').classList.add('on');}
function closeD(){document.getElementById('dr').classList.remove('on');document.getElementById('ov').classList.remove('on');}

/* smooth scroll */
document.querySelectorAll('a[href^="#"]').forEach(a=>{
  a.addEventListener('click',e=>{
    const t=document.querySelector(a.getAttribute('href'));
    if(t){e.preventDefault();window.scrollTo({top:t.getBoundingClientRect().top+window.scrollY-60,behavior:'smooth'});}
  });
});

/* nav glow on scroll */
window.addEventListener('scroll',()=>{
  document.querySelector('nav').style.borderColor=window.scrollY>10?'rgba(255,255,255,0.12)':'rgba(255,255,255,0.08)';
},{passive:true});

/* fade-up observer */
const obs=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting){e.target.classList.add('on');obs.unobserve(e.target);}}),{threshold:.1});
document.querySelectorAll('.fu').forEach(el=>obs.observe(el));

/* form */
function doSubmit(e){
  e.preventDefault();
  const btn=e.target.querySelector('.cf-sub');
  btn.disabled=true;btn.style.opacity='.4';
  document.getElementById('fok').style.display='block';
}
</script>
</body>
</html>
