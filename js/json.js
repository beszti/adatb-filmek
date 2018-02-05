$(document).ready(function(){
																	//kezdőlap betöltése kezdőoldalként
	$("#load").load("template/kezdolap.html", "", function(){
			$("#filmek_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/filmek_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/filmek_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/filmek_mod.html");
					});
				});
			});
			$("#szinesz_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/szinesz_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/szinesz_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/szinesz_mod.html");
					});
					$("#szerfor").load("template/post/szerep_gomb.html","",function(){
						$("#szer").click(function(){
							$("#load").load("template/forms.html","",function(){
								$("#new").click(function(){	
									$("#load").load("template/post/szerep_uj.html");
								});
								$("#del").click(function(){
									$("#load").load("template/post/szerep_del.html");
								});
								$("#mod").click(function(){
									$("#load").load("template/post/szerep_mod.html");
								});
							});
						});
					});
				});
			});
			$("#studio_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/studio_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/studio_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/studio_mod.html");
					});
					$("#szerfor").load("template/post/forgat_gomb.html","",function(){
						$("#forgat").click(function(){
							$("#load").load("template/forms.html","",function(){
								$("#new").click(function(){	
									$("#load").load("template/post/forgat_uj.html");
								});
								$("#del").click(function(){
									$("#load").load("template/post/forgat_del.html");
								});
								$("#mod").click(function(){
									$("#load").load("template/post/forgat_mod.html");
								});
							});
						});
					});
				});
			});
		});


	$("#kezdolap").click(function(){								//kezdőlap és gombjai
		$("#load").load("template/kezdolap.html", "", function(){
			$("#filmek_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/filmek_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/filmek_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/filmek_mod.html");
					});
				});
			});
			$("#szinesz_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/szinesz_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/szinesz_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/szinesz_mod.html");
					});
					$("#szerfor").load("template/post/szerep_gomb.html","",function(){
						$("#szer").click(function(){
							$("#load").load("template/forms.html","",function(){
								$("#new").click(function(){	
									$("#load").load("template/post/szerep_uj.html");
								});
								$("#del").click(function(){
									$("#load").load("template/post/szerep_del.html");
								});
								$("#mod").click(function(){
									$("#load").load("template/post/szerep_mod.html");
								});
							});
						});
					});
				});
			});
			$("#studio_urlap").click(function(){
				$("#load").load("template/forms.html","",function(){
					$("#new").click(function(){
						$("#load").load("template/post/studio_uj.html");
					});
					$("#del").click(function(){
						$("#load").load("template/post/studio_del.html");
					});
					$("#mod").click(function(){
						$("#load").load("template/post/studio_mod.html");
					});
					$("#szerfor").load("template/post/forgat_gomb.html","",function(){
						$("#forgat").click(function(){
							$("#load").load("template/forms.html","",function(){
								$("#new").click(function(){	
									$("#load").load("template/post/forgat_uj.html");
								});
								$("#del").click(function(){
									$("#load").load("template/post/forgat_del.html");
								});
								$("#mod").click(function(){
									$("#load").load("template/post/forgat_mod.html");
								});
							});
						});
					});
				});
			});
		});
	});

//----az oldalak között a váltásban van szerepe------fejlesztés alatt :D
	$("#prev").click(function(){k--;});			//|||
	$("#next").click(function(){k++;});			//|||
//--------------------------------------------------------------------------------------------------

	$("#film_ossz").click(function(){					//lenyílómenük parancsai
		k = 0;
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek.php")
			.done(function(data){
				var mufaj_s = new Array();
				for (var i = 0; i < data.length; i++) {
					mufaj_s[i]='';
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
						for (var j = 0; j < data[i].mufaj.length; j++) {
							mufaj_s[i] += data[i].mufaj[j]+", ";
						}
					$("#mufaj"+i).append(mufaj_s[i]);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_2016").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_2016.php")
			.done(function(data){				
				var mufaj_s = new Array();
				for (var i = 0; i < data.length; i++) {
					mufaj_s[i]='';
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
						for (var j = 0; j < data[i].mufaj.length; j++) {
							mufaj_s[i] += data[i].mufaj[j]+", ";
						}
					$("#mufaj"+i).append(mufaj_s[i]);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_akcio").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_akcio.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_horror").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_horror.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}	
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_vig").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_vig.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}	
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_porno").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_porno.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_kaland").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_kaland.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_scifi").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_scifi.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_thriller").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_thriller.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_drama").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_drama.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_krimi").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_krimi.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_fanta").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek/filmek_fanta.php")
			.done(function(data){				
				for (var i = 0; i < data.length; i++) {
					$("#ID"+i).append("ID: "+data[i].azonosito);
					$("#cim"+i).append(data[i].cim);
					$("#megj_ev"+i).append(data[i].megj_ev);
					$("#hossz"+i).append(data[i].hossz);
					$("#kep"+i).attr('src',data[i].kep);
					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-------------------------szinészek---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------	
	$("#szin_ossz").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szinesz/szineszek.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Születési dátum");
				$("#h3_4").append("Nem");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].szul+"<br />");
					$("#p_4").append(data[i].nem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#szin_ffi").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szinesz/szineszek_ffi.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Születési dátum");
				$("#h3_4").append("Nem");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].szul+"<br />");
				}
				console.log(i);
				$("#p_4").append("Férfiak <br />");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#szin_noi").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szinesz/szineszek_no.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Születési dátum");
				$("#h3_4").append("Nem");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].szul+"<br />");
				}
				console.log(i);
				$("#p_4").append("Nők <br />");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------studiok---------------------------------------------------------	
//-----------------------------------------------------------------------------------------------	
	$("#studio_ossz").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+" "+data[i].varos+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_LA").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_la.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_NY").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_ny.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Mel").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_mel.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Dub").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_dub.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Par").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_par.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Bp").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_bp.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Lon").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_lon.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#studio_Tun").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/studiok/studiok_tun.php")
			.done(function(data){
				$("#h3_1").append("ID |");
				$("#h3_2").append("Név");
				$("#h3_3").append("Cím");
				$("#h3_4").append("Termek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_1").append(data[i].azonosito+"<br />");
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].orszag+", "+data[i].cim+"<br />");
					$("#p_4").append(data[i].terem+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});

//-----------------------szerepek---------------------------------------------------------	
//-----------------------------------------------------------------------------------------------	
	$("#szerep_ossz").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szerep/szerepek.php")
			.done(function(data){
				$("#h3_2").append("Név");
				$("#h3_3").append("Film cím");
				$("#h3_4").append("Szerep");
				for (var i = 0; i < data.length; i++) {
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].cim+"<br />");
					$("#p_4").append(data[i].szerep+"<br />");
				}
				console.log(i);
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#szerep_fo").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szerep/szerepek_fo.php")
			.done(function(data){
				$("#h3_2").append("Név");
				$("#h3_3").append("Film cím");
				$("#h3_4").append("Szerep");
				for (var i = 0; i < data.length; i++) {
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].cim+"<br />");
				}
				console.log(i);
				$("#p_4").append("Főszerepek <br />");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#szerep_mell").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/szerep/szerepek_mell.php")
			.done(function(data){
				$("#h3_2").append("Név");
				$("#h3_3").append("Film cím");
				$("#h3_4").append("Szerep");
				for (var i = 0; i < data.length; i++) {
					$("#p_2").append(data[i].nev+"<br />");
					$("#p_3").append(data[i].cim+"<br />");
				}
				console.log(i);
				$("#p_4").append("Mellékszerepek <br />");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//---------------------------------nem triviális lekérdezések------------------------------------------
//-----------------------------------------------------------------------------------------------	
	$("#nem_tri1").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/nemtrivi/nem_trivi1.php")
			.done(function(data){
				$("#h3_2").append("<br />");
				$("#h3_3").append("Név");
				$("#h3_4").append("Filmek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_3").append(data[i].nev+"<br />");
					$("#p_4").append(data[i].counted+"<br />");
				}
				$("#p_2").append("A színész, aki a legtöbb főszerepet játszotta:");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#nem_tri2").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/nemtrivi/nem_trivi2.php")
			.done(function(data){
				$("#h3_2").append("<br />");
				$("#h3_3").append("Név");
				$("#h3_4").append("Filmek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_3").append(data[i].nev+"<br />");
					$("#p_4").append(data[i].counted+"<br />");
				}
				$("#p_2").append("A színész, aki a legtöbb főszerepet játszotta:");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#nem_tri3").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/nemtrivi/nem_trivi3.php")
			.done(function(data){
				$("#h3_2").append("<br />");
				$("#h3_3").append("Név");
				$("#h3_4").append("Színészek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_3").append(data[i].cim+"<br />");
					$("#p_4").append(data[i].counted+"<br />");
				}
				$("#p_2").append("A film, melyben a legtöbb szereplő játszott:");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#nem_tri4").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/nemtrivi/nem_trivi4.php")
			.done(function(data){
				$("#h3_2").append("<br />");
				$("#h3_3").append("Név");
				$("#h3_4").append("Filmek száma");
				for (var i = 0; i < data.length; i++) {
					$("#p_3").append(data[i].nev+"<br />");
					$("#p_4").append(data[i].counted+"<br />");
				}
				$("#p_2").append("A 10 film, melyben a legtöbb filmet forgatták:");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#submit").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/div_lista.html");
		$("#pager").load("template/empty_div.html");
		$.get("php/search.php")
			.done(function(data){
				$("#h3_2").append("<br />");
				$("#h3_3").append("Azonosító alapján:");
				for (var i = 0; i < data.length; i++) {
					$("#p_3").append(data[i].nev+"<br />");
				}
				$("#p_2").append("A keresés eredménye:");
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
});