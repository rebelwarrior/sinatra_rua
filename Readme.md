# Projecto de HackPR: RUA (Registro Único de Agencias) API 

## Descripción:

Esta es una implementación en Ruby y Sinatra del API (Application Protocol Interface) de RUA (Registro Único de Agencias) de Puerto Rico. Es una copia de programa creado por rosarior en [github] (https://github.com/rosarior/rua) implementada en Ruby y Sinatra para darle mas agilidad y velocidad al las respuestas. 

## Uso:
Instalar ruby primero (sugiero usar [RailsInstaller](http://railsinstaller.org/) para Mac & Windows. Asi tiene tambien el database y todo lo necesario.)

Este programa depende de las siguientes 'gems': 
 
*  sinatra,  
*  activerecord,  
*  sinatra-activerecord,  
*  sqlite3,  
*  json,  
*  rack-contrib,  
*  shotgun

(Incluí un Gemfile pero no lo he provado, para usarlo utilize: `$bundle install`)

Despues de instalar los 'gems' necesarios simplemente:  
  
 `$shotgun`


## Todavia por hacer:
1. Implementar el uso de JSONP para que los pedidos puedan ser de JavaScript directamente.