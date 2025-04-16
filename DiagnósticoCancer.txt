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
    (antecedente2(heridas_superficiales_cicatrizadas); piel(blanca); antecedente1(quemaduras_solares);(edad(X), X >= 60)), ant_familiares(predisposición_cancer).

pregunta('Pregunta de la edad') :-
    write('Cual es tu edad: '),
    read(rpt),
    assert(edad(rpt)).

pregunta('Pregunta antecedente 1') :-
    write('¿Sufres o has tenido alguna quemadura solar? '),
    read(rpt),
    (rpt == si => assert(antecedente1(quemaduras_solares));
    rpt == no => true).

pregunta('Pregunta antecedente 2') :-
    write('¿Tienes heridas superficiales sin sanar? '),
    read(rpt),
    (rpt == si => assert(antecedente2(heridas_superficiales_cicatrizadas));
    rpt == no =>true).

pregunta('Pregunta antecedente 2.1') :-
    write('¿Utilizas camaras de bronceo? '),
    read(rpt),
    (rpt == si => assert(antecedente2(exposicion_camaras_bronceo));
    rpt == no =>true).

pregunta('Pregunta antecedente 3') :-
    write('¿Realizo algun procedimiento con la fotoquimiterapia? '),
    read(rpt),
    (rpt == si => assert(antecedente3(fotoquimiterapia));
    rpt == no =>true).
    
pregunta('Pregunta antecedente 4') :-
    write('¿Posee una lesion cancerosa o la enfermedad de Bowen? '),
    read(rpt),
    (rpt == si => assert(antecedente4(enfermedad_Bowen));
    rpt == no =>true).
    
pregunta('Pregunta lesion') :-
    write('Coloque el numero de la lesion/herida segun usted le parezca: '),
    write('1. Una placa superficial'),
    write('2. Una marca superficial'),
    write('3. Como una marca elevada a corde de la piel'),
    write('4. Como un bulto sobresaliente'),
    write('5. Una marca plana a corde a la piel'),
    write('6. Ninguna'),
    read(rpt),
    (rpt == 1 => assert(lesion(placa_superficial));
    rpt == 2 => assert(lesion(marca_superficial));
    rpt == 3 => assert(lesion(marca_elevada));
    rpt == 4 => assert(lesion(bulto_sobresaliente));
    rpt == 5 => assert(lesion(marca));
    rpt == 6 => true).

pregunta('Pregunta superficie') :-
    write('Coloque el numero segun la superficie que padece la zona: '),
    write('1. Rugosa'),
    write('2. Escamosa'),
    write('3. Esta plegada y elevada'),
    write('4. Es lisa y verrugosa'),
    write('5. Solo verrugosa'),
    write('6. Ninguno'),
    read(rpt),
    (rpt == 1 => assert(superficie(rugoso));
    rpt == 2 => assert(superficie(escamosa));
    rpt == 3 => assert(superficie(plegada_elevada));
    rpt == 4 => assert(superficie(lisa_verrugosa));
    rpt == 5 => assert(superficie(verrugosa))
    rpt == 6 => true).

pregunta('Pregunta inflamacion') :-
    write('Presenta inflamación'),
    read(rpt),
    (rpt == si => assert(inflamacion(presente));
    rpt == no => true).

pregunta('Pregunta ulcera') :-
    write('Se presenta como ulcera'),
    read(rpt),
    (rpt == si => assert(ulcera(presente));
    rpt == no => true).

pregunta('Pregunta pigmentacion') :-
    write('¿Presenta algun color distinto?'),
    read(rpt),
    (rpt == si => assert(pigmentacion(presente));
    rpt == no => true).

pregunta('Pregunta localizacion') :-
    write('Esta presente en: '),
    write('1. manos'),
    write('2. pies'),
    write('3. ninguno'),
    read(rpt),
    (rpt == 1 => assert(localizacion(manos));
    rpt == 2 => assert(localizacion(pies));
    rpt == 3 => true).

pregunta('Pregunta piel') :- 
    write('¿Su piel es de tez blanca?'),
    read(rpt),
    (rpt == si => assert(piel(blanca));
    rpt == no => true).