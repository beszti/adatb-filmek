$(document).ready(function(){
	
																	//kezdőlap betöltése kezdőoldalként
	$("#load").load("template/kezdolap.html", "", function(){
		$("#filmek_urlap").click(function(){
			$("#load").load("template/filmek_urlap.html");
		});
		$("#szinesz_urlap").click(function(){
			$("#load").load("template/szinesz_urlap.html");
		});
		$("#studio_urlap").click(function(){
			$("#load").load("template/studio_urlap.html");
		});
	});


	$("#kezdolap").click(function(){								//kezdőlap gombjai és gombjai
		$("#load").load("template/kezdolap.html", "", function(){
			$("#filmek_urlap").click(function(){
				$("#load").load("template/filmek_urlap.html");
			});
			$("#szinesz_urlap").click(function(){
				$("#load").load("template/szinesz_urlap.html");
			});
			$("#studio_urlap").click(function(){
				$("#load").load("template/studio_urlap.html");
			});
		});
	});

//----az oldalak között a váltásban van szerepe------
	function page_load(){
		$("#pager").load("template/pageclick.html", "", function(){
			k = 0;
			$("#prev").click(function(){k--;
				for (var i = 0; i < 8; i++) {
			console.log("i2: "+i);
			("#load").load("template/tumbnails/tumb"+i+".html");
		}
				console.log(k)
			});							//|||
			$("#next").click(function(){k++;
				console.log(k)
			});							//|||
		});
	}
//--------------------------------------------------------------------------------------------------
var k;
	$("#film_ossz").click(function(){					//lenyílómenük parancsai
		
		
			("#load").load("template/tumbnail.html");
			("#load").load("template/tumbnails/tumb1.html");
			("#load").load("template/tumbnails/tumb2.html");
			("#load").load("template/tumbnails/tumb3.html");
			("#load").load("template/tumbnails/tumb4.html");
			("#load").load("template/tumbnails/tumb5.html");

		$("#pager").load("template/pageclick.html", "", function(){
			k = 0;
			for (var i = 0; i < 8; i++) {
			console.log("i2: "+i);
			("#load").load("template/tumbnails/tumb0.html");
		}
			$("#prev").click(function(){
				k--;
				get_et();
			});							//|||
			$("#next").click(function(){
				k++;
				get_et();
			});							//|||
		});
		for (var i = 0; i < 8; i++) {
			console.log("i2: "+i);
			("#load").load("template/tumbnails/tumb"+i+".html");
		}
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_2016").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek_2016.php")
			.done(function(data1){				
				for (var i = 0; i < data1.length; i++) {
					$("#ID"+i).append("ID: "+data1[i].azonosito);
					$("#cim"+i).append(data1[i].cim);
					$("#megj_ev"+i).append(data1[i].megj_ev);
					$("#hossz"+i).append(data1[i].hossz);
					$("#mufaj"+i).append(data1[i].mufaj);
					$("#kep"+i).attr('src',data1[i].kep);

					console.log(data1[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});
//-----------------------------------------------------------------------------------------------	
	$("#film_akcio").click(function(){					//lenyílómenük parancsai
		
		$("#load").load("template/tumbnail.html");
		$("#pager").load("template/pageclick.html");
		$.get("php/filmek_akcio.php")
			.done(function(data2){				
				for (var i = 0; i < data2.length; i++) {
					$("#ID"+i).append(data2[i].azonosito);
					$("#cim"+i).append(data2[i].cim);
					$("#megj_ev"+i).append(data2[i].megj_ev);
					$("#hossz"+i).append(data2[i].hossz);
					$("#mufaj"+i).append(data2[i].mufaj);
					$("#kep"+i).append(data2[i].kep);

					console.log(data2[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	});


var max, jmax;

	function get_et(){
		console.log(k)
		$.get("php/filmek.php")
			.done(function(data){	
				max = (k+1)*8;
				jmax = 8;
					if (data.length%8 != 0 && k > data.length/8) {
						max = (k*8)+data.length%8;
						jmax = data.length%8;
					}
				console.log(k+"k  "+max+"max  "+jmax+"jmax"); 
				
				for (var i = 0; i < jmax; i++) {
					console.log("i1: "+i);
					("#load").load("template/tumbnails/tumb"+i+".html");
				}
			
				})
				.fail(function(){
					console.log("Sikertelen");
				});
		

		$.get("php/filmek.php")
			.done(function(data){		
				for (var i = k, j=0; i < max, j < jmax; i++, j++) {
					$("#ID"+j).append("ID: "+data[i].azonosito);
					$("#cim"+j).append(data[i].cim);
					$("#megj_ev"+j).append(data[i].megj_ev);
					$("#hossz"+j).append(data[i].hossz);
					var mufaj_s;
					for (var l = 0; l < data[i].mufaj.length; l++) {
						mufaj_s += data[i].mufaj[l]+", ";
					}	
					console.log(mufaj_s);
					$("#mufaj"+j).append(mufaj_s);
					$("#kep"+j).attr('src',data[i].kep);

					console.log(data[i]);
				}
				console.log(i);		
			})
			.fail(function(){
				console.log("Sikertelen");
			});
	}




});