file = 'entrada'

f = open(file, 'r')
fo = open('salida', 'w')

def Procesa():
 global datos
# global fo
 ss = '$$' + datos[4:]
 fo.write(ss)

 ban = 1
 while ban < 2:
  datos = f.readline()
  print(len(datos))
  if datos[:4] == '\$\$':
   ss = '$$' + datos[4:]
   fo.write(ss)
   ban = ban + 1
  elif len(datos) > 1:
   fo.write(datos)

datos = f.readline()

while datos:
 ss = datos
 if ss[:4] == '\$\$':
  Procesa()
 elif ss[:2] == '\#':
  ss = '#'+ss[2:]
  fo.write(ss)
 else:
  fo.write(ss)
 datos = f.readline()

f.close()
fo.close()







