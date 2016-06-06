require_relative '../model/detector_de_opciones'


class OrdenadorDeArgumentos

  def ordenar argumentos

    colocar_formato_en_primera_posicion(argumentos)

  end

  def colocar_formato_en_primera_posicion(argumentos)

    detector = DetectorDeOpciones.new

    if !detector.hay_formato_especificado? argumentos

      argumentos.push(argumentos[0])
      argumentos[0] = "--format=pretty" #Coloco pretty por default si no esta

    else

      for i in 0...argumentos.size

        if argumentos[i].start_with?('--format=')

          temp = argumentos[0]
          argumentos[0] = argumentos[i]
          argumentos[i] = temp

        end

      end

    end

  end



end