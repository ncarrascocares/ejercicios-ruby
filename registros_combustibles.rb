require 'csv'

ARCHIVO = 'combustible.csv'

def procesar_combustible(archivo)
  consumos = {}
  total_general = 0
  contador_filas = 0

  CSV.foreach(archivo, headers: true) do |fila|
    contador_filas += 1
    equipo = fila['equipo']
    litros = fila['litros']

	
    if litros.nil? || litros.strip.empty?
        puts "Advertencia: #{equipo} no tiene combustible registrado, fila #{contador_filas}"
        next
    end

    litros = litros.to_f


    if consumos.key?(equipo)
      consumos[equipo] += litros
    else
      consumos[equipo] = litros
    end

    total_general += litros
  end

  return consumos, total_general
end

def generar_reporte(consumos, total)
  puts "REPORTE DE COMBUSTIBLE"
  puts "----------------------"

  consumos.each do |equipo, litros|
    puts "#{equipo}: #{litros} litros"
  end

  puts "----------------------"
  puts "Total general: #{total} litros"
end

consumos, total = procesar_combustible(ARCHIVO)
generar_reporte(consumos, total)
