import math

def capsule_volume(r, a):
  return round(math.pi * r**2 * ((4/3)*r+a),3)

def capsule_surface_area(r, a):
  return round(2 * math.pi * r * (2*r + a),4)

def capsule_circumference(r):
  return round(2 * math.pi * r,4)

def main():
  N = int(input("Enter the value of 'N': "))
  a = float(input("Enter the value of 'a': "))

  print('This program prints the volume, surface area\
& circumference of a capsule having radius r ranging from 6 to N\
 in increments of 6 and side lengths a.')
  print(end='\n')
  print('{:<8} {:<15} {:<15} {:<10}'.format('Radius','Volume','Surface Area','Circumference'))
  print('-'*70)

  for r in range(6, N + 1, 6):
    vol = capsule_volume(r, a)
    surf_area = capsule_surface_area(r, a)
    circ = capsule_circumference(r)
    print('{:<8} {:<15} {:<15} {:<10}'.format(r,vol,surf_area,circ))

if __name__ == '__main__':
  main()