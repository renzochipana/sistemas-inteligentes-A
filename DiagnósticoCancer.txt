:- dynamic antecedente1/1.
:- dynamic antecedente2/1.
:- dynamic antecedente3/1.
:- dynamic antecedente4/1.
:- dynamic ant_familiares/1.
:- dynamic lesion/1.
:- dynamic pigmentacion/1.
:- dynamic superficie/1. 
:- dynamic ulcera/1.
:- dynamic inflamacion/1.
:- dynamic localizacion/1.
:- dynamic piel/1.
:- dynamic edad/1.

cancer(espino_celular) :-
	lesion(placa_superficial), superficie(rugoso), inflamacion(presente), ulcera(presente), (antecedente1(quemaduras_solares); antecedente4(enfermedad_Bowen); antecedente2(heridas_superficiales_cicatrizadas); (edad(X), X >= 60)).

cancer(baso_celular) :-
	lesion(marca_superficial), superficie(escamosa), ulcera(presente), pigmentacion(presente), (antecedente1(quemaduras_solares); (edad(X), X >= 60)).

cancer(melanoma_extension) :-
    lesion(marca_elevada), pigmentacion(presente), superficie(plegada_elevada), (antecedente1(quemaduras_solares); antecedente2(exposicion_camaras_bronceo); antecedente3(fotoquimioterapia); (edad(X), X >= 60)).

cancer(melanoma_nodular) :-
    lesion(bulto_sobresaliente), superficie(lisa_verrugosa), pigmentacion(presente), localizacion(cuello), (antecedente1(quemaduras_solares); antecedente2(exposicion_camaras_bronceo); antecedente3(fotoquimioterapia); (edad(X), X >= 60)).

cancer(melanoma_lentiginoso_acral) :-
    pigmentacion(presente), lesion(marca), superficie(verrugosa), (localizacion(manos); localizacion(pies)), (antecedente1(quemaduras_solares); antecedente2(exposicion_camaras_bronceo); antecedente3(fotoquimioterapia); (edad(X), X >= 60)).

cancer(melanoma_lentigo_maligno) :-
    localizacion(cara_cuello), pigmentacion(presente), ulcera(presente), superficie(rugoso), (antecedente1(quemaduras_solares); antecedente2(exposicion_camaras_bronceo); antecedente3(fotoquimioterapia); (edad(X), X >= 60)).

cancer(propenso) :-
    (antecedente2(heridas_superficiales_cicatrizadas); piel(blanca); antecedente1(quemaduras_solares);(edad(X), X >= 60)).

pregunta_edad :-
    write('Cual es tu edad: '),
    read(Rpt),
    assert(edad(Rpt)).

pregunta_antecedente_1 :-
    write('¿Sufres o has tenido alguna quemadura solar? '),
    read(Rpt),
    (Rpt == si -> assert(antecedente1(quemaduras_solares));
    Rpt == no -> true).

pregunta_antecedente_2 :-
    write('¿Tienes heridas superficiales sin sanar? '),
    read(Rpt),
    (Rpt == si -> assert(antecedente2(heridas_superficiales_cicatrizadas));
   	Rpt == no -> true).

pregunta_antecedente_2_1 :-
    write('¿Utilizas camaras de bronceo? '),
    read(Rpt),
    (Rpt == si -> assert(antecedente2(exposicion_camaras_bronceo));
     Rpt == no -> true).

pregunta_antecedente_3 :-
    write('¿Realizo algun procedimiento con la fotoquimiterapia? '),
    read(Rpt),
    (Rpt == si -> assert(antecedente3(fotoquimiterapia)); true;
    Rpt == no -> true).
    
pregunta_antecedente_4 :-
    write('¿Posee una lesion cancerosa o la enfermedad de Bowen? '),
    read(Rpt),
    (Rpt == si -> assert(antecedente4(enfermedad_Bowen));
    Rpt == no -> true).
    
pregunta_lesion :-
    writeln('Coloque el numero de la lesion/herida segun usted le parezca: '),
    writeln('1. Una placa superficial'),
    writeln('2. Una marca superficial'),
    writeln('3. Como una marca elevada a corde de la piel'),
    writeln('4. Como un bulto sobresaliente'),
    writeln('5. Una marca plana a corde a la piel'),
    writeln('6. Ninguna'),
    read(Rpt),
    (Rpt == 1 -> assert(lesion(placa_superficial));
    Rpt == 2 -> assert(lesion(marca_superficial));
    Rpt == 3 -> assert(lesion(marca_elevada));
    Rpt == 4 -> assert(lesion(bulto_sobresaliente));
    Rpt == 5 -> assert(lesion(marca));
    Rpt == 6 -> true).

pregunta_superficie :-
    writeln('Coloque el numero segun la superficie que padece la zona: '),
    writeln('1. Rugosa'),
    writeln('2. Escamosa'),
    writeln('3. Esta plegada y elevada'),
    writeln('4. Es lisa y verrugosa'),
    writeln('5. Solo verrugosa'),
    writeln('6. Ninguno'),
    read(Rpt),
    (Rpt == 1 -> assert(superficie(rugoso));
    Rpt == 2 -> assert(superficie(escamosa));
    Rpt == 3 -> assert(superficie(plegada_elevada));
    Rpt == 4 -> assert(superficie(lisa_verrugosa));
    Rpt == 5 -> assert(superficie(verrugosa));
    Rpt == 6 -> true).

pregunta_inflamacion :-
    write('Presenta inflamación'),
    read(Rpt),
    (Rpt == si -> assert(inflamacion(presente));
    Rpt == no -> true).

pregunta_ulcera :-
    write('Se presenta como ulcera'),
    read(Rpt),
    (Rpt == si -> assert(ulcera(presente));
    Rpt == no -> true).

pregunta_pigmentacion :-
    write('¿Presenta algun color distinto?'),
    read(Rpt),
    (Rpt == si -> assert(pigmentacion(presente));
    Rpt == no -> true).

pregunta_localizacion :-
    writeln('Esta presente en: '),
    writeln('1. manos'),
    writeln('2. pies'),
    writeln('3. ninguno'),
    read(Rpt),
    (Rpt == 1 -> assert(localizacion(manos));
    Rpt == 2 -> assert(localizacion(pies));
    Rpt == 3 -> true).

pregunta_piel :- 
    write('¿Su piel es de tez blanca?'),
    read(Rpt),
    (Rpt == si -> assert(piel(blanca));
    Rpt == no -> true).

realizar_preguntas :-
    pregunta_edad,
    pregunta_antecedente_1,
    pregunta_antecedente_2,
    pregunta_antecedente_2_1,
    pregunta_antecedente_3,
    pregunta_antecedente_4,
    pregunta_lesion,
    pregunta_superficie,
    pregunta_inflamacion,
    pregunta_ulcera,
    pregunta_pigmentacion,
    pregunta_localizacion,
    pregunta_piel,
    cancer(Cancer),
    writeln('Según lo contestado tienes: '), writeln(Cancer).

