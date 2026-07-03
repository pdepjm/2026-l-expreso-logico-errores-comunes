%horaMuerte/1 -> Hora
horaMuerte(24).

%dosisEncontrada/1 -> DosisEnMg
dosisEncontrada(50).

horaDeAdministracion(Hora):-
    horaMuerte(HoraMuerte),
    dosisEncontrada(Dosis),
    Hora is HoraMuerte - 100 / Dosis.

horaCritica(Hora, HoraMuerte, HoraAdmin):-
    horaMuerte(HoraMuerte),
    horaDeAdministracion(HoraAdmin),
    between(HoraAdmin, HoraMuerte, Hora).


horaDeAdministracion(hora):-
    horaMuerte(horaMuerte),
    dosisEncontrada(dosis),
    hora is horaMuerte - 100 / dosis.


horaDeAdministracion(Hora):-
    Hora is 24 - 100 / 50.

horaDeAdministracion(Hora):-
    horaMuerte(HoraMuerte),
    dosisEncontrada(Dosis),
    Hora = HoraMuerte - 100 / Dosis.

horaDeAdministracion(Hora):-
    horaMuerte(HoraMuerte),
    dosisEncontrada(UnaDosis),
    Dosis = UnaDosis,
    Hora is HoraMuerte - 100 / Dosis.


horaDeAdministracion(Hora):-
    Hora is horaMuerte - 100 / dosis.

horasCriticas(Horas):-
    findall(Hora, esCritica(Hora), Horas).



/*
horaDeAdministracion(Hora):-
    horaMuerte(HoraMuerte),
    dosisEncontrada(Dosis),
    Hora is HoraMuerte - 100 / Dosis.

% 2

horasCriticas(Horas):-
    horaMuerte(HoraMuerte),
    horaDeAdministracion(HoraAdmin),
    between(HoraAdmin, HoraMuerte, Horas).
*/
