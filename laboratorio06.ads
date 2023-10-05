package Laboratorio06 is
   type T_Vector is array(Integer range <>) of Integer;
   subtype T_Vector10 is T_Vector(1..10);
   subtype T_Vector16 is T_Vector(1..16);

   procedure Ultimo_Par(V: in T_Vector10; Ultimo_Par: out Integer; Posicion: out Natural);
   --Pre: V tiene diez enteros
   --post: ultimo par = numero par de V que est� en la posicion m�s alta de V (0 si no hay)
   --      posicion = posici�n de ultimo par en V (si est� repetido, la m�s alta de ellas)

   function multiplos_del_ultimo(V: in T_Vector10) return Positive;
   --Pre: V tiene diez enteros
   --post: resultado = numero elementos de V que son m�ltiplos de V(10)

   function esta_ordenado(V: in T_Vector10) return Boolean;
   --Pre: V tiene diez enteros
   --post: resultado = true <--> V ordenado crecientemente o V ordenado decrecientemente

   procedure Separar_digitos (Num: In Natural; V: out T_Vector10; impares: out Natural);
   --post: V contiene los d�giros de Num (rellenando 0s a la izquierda hasta 10 digitos)
   --      impares contiente cu�ntos d�gitos impares tiene Num

   function binario_a_decimal(V: in T_Vector10) return Natural;
   --Pre: V tiene diez bits
   --post: resultado = numero decimal que representan los 10 bits de V

   procedure Rot13 (Sin_Cifrar: in STRING; Cifrado: out STRING);
   --Pre: Sin_cifrar contiene una cadena de 10 caracteres
   --Post: resultado contiene la cadena de entrada cifrada con el algoritmo rot13.

   function Digito_Control(Codigo_Cuenta: in T_Vector10) return Natural;
   --Pre: codigo cuenta son los 10 digitos de una cuenta corriente
   --Post: resultado es el digito de control para la cuenta indicada

   procedure Num_Misterioso(Num:out String);
   --Post Num es el numero de 10 cifras que cumple todas las condiciones del enunciado

   procedure Incluir_Digito_Control(Tarjeta: in out T_Vector16);
   --Pre: TArjeta es un vector con los 15 primeros d�gitos definidos
   --Post: TArjeta tiene el d�gito 16 acorde a los 15 primeros

   function Es_Correcta(Tarjeta: in T_Vector16) return Boolean;
   --Pre: Tarjeta es un vector con 16 d�gitos
   --Post: REsultado = true <--> Tarjeta es un n�mero v�lido de tarjeta de cr�dito

   procedure Incluir_Digitos_IBAN(Pais: in String; Banco, Sucursal: in Integer; Numero_Cuenta: T_Vector10;
      IBAN: out STRING);
   --Pre: Pais es el c�digo del PA�s con dos letras may�sculas: ES, FR, IT, IE, DE...
   --     Banco es un n�mero que identifica al BAnco y Sucursal a la sucursal de ese banco
   --     Numero_cuenta es un n�mero de 10 d�gitos que identifica a una cuenta en el banco indicado
   --Post: IBAN contiene los 24 caracteres que identifican en Europa a la cuenta indicada, incluyendo los d�gitos de control

   procedure Rot13 (Texto: in out STRING);
   --Pre: Texto contiene una cadena de 10 caracteres
   --Post:Texto contiene la cadena de entrada cifrada con el algoritmo rot13.

   function Mayusculizar (Texto: in String) return String;
   --Pre: Texto contiene una cadena de caracteres
   --Post:Devuelve la cadena de entrada en may�sculas

   procedure Poetizar;
   --Entrada estandar: Texto organizado en l�neas
   --Salida est�ndar: El texto centrado en l�neas de 40 caracteres con guiones

end Laboratorio06;
