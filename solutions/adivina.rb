num = rand(1...10)

print "Adivina el número que estoy pensando: "
guess = gets.chomp.to_i

if num == guess
  puts "Felicitaciones, ese era!"
else
  puts "Lo siento, intenta nuevamente!"
end

# también es posible utilizando el operador ternario
# puts num == guess ? "Felicitaciones, ese era!" : "Lo siento, intenta nuevamente!"

#generando un numero aleatorio
#numero = rand(1000)
#cont=1
#solicitando numero al usuario
#puts numero
#puts "Ingresa un numero"
#Opcion para limpiar los datos anteriores
#STDOUT.flush
#tomando el dato del usuario y pasandolo a un valor numerico
#opcion_usuario = gets.chomp.to_i

#puts opcion_usuario

#if opcion_usuario == numero
#    puts "Ganaste a la primera"
#else
#    puts "error...vuelve a intentarlo"
#    while numero != opcion_usuario
#        puts "Ingresa un numero"
#        STDOUT.flush
#        opcion_usuario = gets.chomp.to_i
#        cont = cont + 1
#    end
    #Se envía mensaje con el contador de vueltas, se debe pasar a cadena para mostrarlo en el mensaje
#    puts "Ganaste! lo hiciste en la vuelta numero " + cont.to_s
#end
