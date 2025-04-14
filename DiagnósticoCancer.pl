:- dynamic antecedentes/1.
:- dynamic ant_familiares/1.
:- dynamic lesion/1.
:- dynamic pigmentacion/1.
:- dynamic superficie/1. 
:- dynamic ulcera/1.
:- dynamic inflamacion/1.
:- dynamic localizacion/1.
:- dynamic edad/1.
:- dynamic piel/1.

cancer(espino_celular) :-
	lesion(marca_superficial), superficie(rugoso), inflamacion(presente), ulcera(presente), (antecedentes(quemaduras_solares); antecedentes(enfermedad_Bowen); antecedentes(heridas_superficiales_cicatrizadas)).

cancer(baso_celular) :-
	lesion(placa_superficial), superficie(escamosa), ulcera(presente), pigmentacion(presente), (antecedentes(quemaduras_solares); antecedentes(Paget_de_pezon)).

cancer(melanoma_extension) :-
    lesion(plana), pigmentacion(presente), superficie(plegada_elevada), (antecedentes(quemaduras_solares); antecedentes(Paget_de_pezon); antecedentes(exposicion_camaras_bronceo); antecedentes(fotoquimio_terapias)).

cancer(melanoma_nodular) :-
    lesion(sobresaliente), superficie(lisa_verrugosa), pigmentacion(presente), localizacion(cuello), (antecedentes(quemaduras_solares); antecedentes(Paget_de_pezon); antecedentes(exposicion_camaras_bronceo); antecedentes(fotoquimio_terapias)), ant_familiares(predisposición_cancer).

cancer(melanoma_lentiginoso_acral) :-
    pigmentacion(presente), lesion(elevada), superficie(verrugosa), localizacion(manos), (antecedentes(quemaduras_solares); antecedentes(Paget_de_pezon); antecedentes(exposicion_camaras_bronceo); antecedentes(fotoquimio_terapias)).

cancer(melanoma_lentigo_maligno) :-
    localizacion(cara_cuello), pigmentacion(presente), ulcera(presente), superficie(rugosa), (antecedentes(quemaduras_solares); antecedentes(Paget_de_pezon); antecedentes(exposicion_camaras_bronceo); antecedentes(fotoquimio_terapias)).

cancer(propenso):-
    antecedentes(Paget_de_pezon); antecedentes(heridas_superficiales_cicatrizadas); piel(blanca); antecedentes(quemaduras_solares).