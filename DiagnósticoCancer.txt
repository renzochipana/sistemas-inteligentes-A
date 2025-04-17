
:- dynamic edad/1, antecedente1/1, antecedente2/1, antecedente3/1, antecedente4/1, ant_familiares/1, lesion/1, superficie/1, inflamacion/1, ulcera/1, pigmentacion/1, localizacion/1, piel/1, antecedente5/1, antecedente6/1, antecedente7/1, antecedente8/1, antecedente9/1, antecedente10/1, antecedente11/1, antecedente12/1, antecedente13/1, antecedente14/1, antecedente15/1, antecedente16/1, antecedente17/1, antecedente18/1, antecedente19/1.
pregunta_edad :-
    write('¿Cuál es la edad del paciente? '), 
    read(Edad),
    assert(edad(Edad)).

pregunta_antecedente1 :-
    write('¿El paciente ha sufrido quemaduras solares? (si/no): '), read(R),
    (R == si -> assert(antecedente1(quemaduras_solares)); true).

pregunta_antecedente2 :-
    write('¿El paciente ha estado expuesto a cámaras de bronceo? (si/no): '), read(R),
    (R == si -> assert(antecedente2(exposicion_camaras_bronceo)); true).

pregunta_antecedente3 :-
    write('¿El paciente ha recibido fotoquimioterapia? (si/no): '), read(R),
    (R == si -> assert(antecedente3(fotoquimioterapia)); true).

pregunta_antecedente4 :-
    write('¿El paciente ha tenido enfermedad de Bowen? (si/no): '), read(R),
    (R == si -> assert(antecedente4(enfermedad_Bowen)); true).

pregunta_ant_familiares :-
    write('¿El paciente tiene antecedentes familiares de cáncer? (si/no): '), read(R),
    (R == si -> assert(ant_familiares(predisposicion_cancer)); true).

pregunta_lesion :-
    write('¿Qué tipo de lesión presenta? (marca/placa/nodulo/bulto): '), read(R),
    assert(lesion(R)).

pregunta_superficie :-
    write('¿Cómo es la superficie de la lesión? (rugoso/liso/verrugoso/escamoso): '), read(R),
    assert(superficie(R)).

pregunta_inflamacion :-
    write('¿La lesión tiene inflamación? (si/no): '), read(R),
    (R == si -> assert(inflamacion(presente)); true).

pregunta_ulcera :-
    write('¿La lesión tiene úlcera? (si/no): '), read(R),
    (R == si -> assert(ulcera(presente)); true).

pregunta_pigmentacion :-
    write('¿La lesión tiene pigmentación? (si/no): '), read(R),
    (R == si -> assert(pigmentacion(presente)); true).

pregunta_localizacion :-
    write('¿Dónde está localizada la lesión? (cuello/manos/pies/cara): '), read(R),
    assert(localizacion(R)).

pregunta_piel :-
    write('¿Cómo es la piel del paciente? (blanca/oscura): '), read(R),
    assert(piel(R)).

pregunta_antecedente5 :-
    write('¿Sufre de alguna enfermedad crónica? (si/no): '), read(R),
    (R == si -> assert(antecedente5(enfermedad_cronica)); true).

pregunta_antecedente6 :-
    write('¿Tiene alguna enfermedad inmunosupresora? (si/no): '), read(R),
    (R == si -> assert(antecedente6(enfermedades_inmunosupresoras)); true).

pregunta_antecedente7 :-
    write('¿Ha tenido alguna lesión cutánea previa? (si/no): '), read(R),
    (R == si -> assert(antecedente7(lesiones_previas)); true).

pregunta_antecedente8 :-
    write('¿Tiene cicatrices quirúrgicas previas? (si/no): '), read(R),
    (R == si -> assert(antecedente8(cicatrices_quirurgicas)); true).

pregunta_antecedente9 :-
    write('¿Tiene hábitos de vida no saludables? (si/no): '), read(R),
    (R == si -> assert(antecedente9(habitos_vida_no_saludables)); true).

pregunta_antecedente10 :-
    write('¿Sufre de desequilibrio hormonal? (si/no): '), read(R),
    (R == si -> assert(antecedente10(desequilibrio_hormonal)); true).

pregunta_antecedente11 :-
    write('¿Fuma el paciente? (si/no): '), read(R),
    (R == si -> assert(antecedente11(fuma)); true).

pregunta_antecedente12 :-
    write('¿Consume alcohol el paciente? (si/no): '), read(R),
    (R == si -> assert(antecedente12(consumo_alcohol)); true).

pregunta_antecedente13 :-
    write('¿Hace actividad física regularmente el paciente? (si/no): '), read(R),
    (R == si -> assert(antecedente13(actividad_fisica)); true).

pregunta_antecedente14 :-
    write('¿Está expuesto a productos químicos? (si/no): '), read(R),
    (R == si -> assert(antecedente14(exposicion_quimicos)); true).

pregunta_antecedente15 :-
    write('¿Tiene una dieta saludable el paciente? (si/no): '), read(R),
    (R == si -> assert(antecedente15(dieta_saludable)); true).

pregunta_antecedente16 :-
    write('¿Ha viajado el paciente a áreas tropicales recientemente? (si/no): '), read(R),
    (R == si -> assert(antecedente16(viaje_tropical)); true).

pregunta_antecedente17 :-
    write('¿Está expuesto el paciente a radiaciones? (si/no): '), read(R),
    (R == si -> assert(antecedente17(exposicion_radiaciones)); true).

pregunta_antecedente18 :-
    write('¿Tiene el paciente antecedentes de infecciones cutáneas? (si/no): '), read(R),
    (R == si -> assert(antecedente18(infecciones_cutaneas)); true).

pregunta_antecedente19 :-
    write('¿Ha tenido el paciente algún tipo de alergia cutánea? (si/no): '), read(R),
    (R == si -> assert(antecedente19(alergias_cutaneas)); true).


diagnostico :-
    pregunta_edad,
    pregunta_antecedente1,
    pregunta_antecedente2,
    pregunta_antecedente3,
    pregunta_antecedente4,
    pregunta_ant_familiares,
    pregunta_lesion,
    pregunta_superficie,
    pregunta_inflamacion,
    pregunta_ulcera,
    pregunta_pigmentacion,
    pregunta_localizacion,
    pregunta_piel,
    pregunta_antecedente5,
    pregunta_antecedente6,
    pregunta_antecedente7,
    pregunta_antecedente8,
    pregunta_antecedente9,
    pregunta_antecedente10,
    pregunta_antecedente11,
    pregunta_antecedente12,
    pregunta_antecedente13,
    pregunta_antecedente14,
    pregunta_antecedente15,
    pregunta_antecedente16,
    pregunta_antecedente17,
    pregunta_antecedente18,
    pregunta_antecedente19,
    diagnostico_resultado.


diagnostico_resultado :-
    edad(Edad),
    lesion(TipoLesion),
    superficie(Superficie),
    inflamacion(Inflamacion),
    ulcera(Ulcera),
    pigmentacion(Pigmentacion),
    localizacion(Localizacion),
    piel(Piel),
    (
        (Edad >= 50, (TipoLesion == nodulo ; TipoLesion == bulto), (Inflamacion == presente ; Ulcera == presente), (Pigmentacion == presente ; Localizacion == cuello)) -> 
            write('El paciente tiene alto riesgo de cáncer cutáneo.');
        (Edad < 50, (TipoLesion == marca ; TipoLesion == placa), (Inflamacion == presente ; Ulcera == presente), (Pigmentacion == presente ; Localizacion == cara)) -> 
            write('El paciente tiene bajo riesgo de cáncer cutáneo.');
        write('El diagnóstico no es concluyente, se recomienda más pruebas.')
    ).
