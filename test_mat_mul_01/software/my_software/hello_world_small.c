#include "sys/alt_stdio.h"
#include "system.h"
#include "io.h"
#include <stdio.h>
/*MY_NEW_COMPONENT_0_BASE 
int main()
{ 
  alt_putstr("Hello from Nios II!\n");

  * Event loop never exits.
  while (1);

  return 0;
} */


int main()
{ 
  alt_putstr("Hello from Nios II!\n");

  unsigned int a11= 0x3f800000;//0x1;
  unsigned int a12= 0x40000000;//2;
  unsigned int a13= 0x40400000; //3
  unsigned int a14= 0x40800000; //4
  unsigned int a21= 0x41300000;
  unsigned int a22= 0x41400000;
  unsigned int a23= 0x41500000;
  unsigned int a24= 0x41600000;
  unsigned int a31= 0x41a80000;
  unsigned int a32= 0x41b00000;
  unsigned int a33= 0x41b80000;
  unsigned int a34= 0x41c00000;
  unsigned int a41= 0x41f80000;
  unsigned int a42= 0x42000000;
  unsigned int a43= 0x42040000;
  unsigned int a44= 0x42080000;
  unsigned int x1 = 0x3f800000;//0x1;
  unsigned int x2 = 0x40000000;//0x2;
  unsigned int x3 = 0x40400000;//0x3;
  unsigned int x4 = 0x40800000;//0x4;



  IOWR(MY_NEW_COMPONENT_0_BASE,1,a11);
  printf ("Writing [0x%x] to a11 register.\n", a11);

  IOWR(MY_NEW_COMPONENT_0_BASE,2,a12);
  printf ("Writing [0x%x] to a12 register.\n", a12);

  IOWR(MY_NEW_COMPONENT_0_BASE,3,a13);
  printf ("Writing [0x%x] to a13 register.\n", a13);

  IOWR(MY_NEW_COMPONENT_0_BASE,4,a14);
  printf ("Writing [0x%x] to a14 register.\n", a14);

  IOWR(MY_NEW_COMPONENT_0_BASE,5,a21);
  printf ("Writing [0x%x] to a21 register.\n", a21);

  IOWR(MY_NEW_COMPONENT_0_BASE,6,a22);
  printf ("Writing [0x%x] to a22 register.\n", a22);

  IOWR(MY_NEW_COMPONENT_0_BASE,7,a23);
  printf ("Writing [0x%x] to a23 register.\n", a23);

  IOWR(MY_NEW_COMPONENT_0_BASE,8,a24);
  printf ("Writing [0x%x] to a24 register.\n", a24);

  IOWR(MY_NEW_COMPONENT_0_BASE,9,a31);
  printf ("Writing [0x%x] to a31 register.\n", a31);

  IOWR(MY_NEW_COMPONENT_0_BASE,10,a32);
  printf ("Writing [0x%x] to a32 register.\n", a32);

  IOWR(MY_NEW_COMPONENT_0_BASE,11,a33);
  printf ("Writing [0x%x] to a33 register.\n", a33);

  IOWR(MY_NEW_COMPONENT_0_BASE,12,a34);
  printf ("Writing [0x%x] to a34 register.\n", a34);

  IOWR(MY_NEW_COMPONENT_0_BASE,13,a41);
  printf ("Writing [0x%x] to a41 register.\n", a41);

  IOWR(MY_NEW_COMPONENT_0_BASE,14,a42);
  printf ("Writing [0x%x] to a42 register.\n", a42);

  IOWR(MY_NEW_COMPONENT_0_BASE,15,a43);
  printf ("Writing [0x%x] to a43 register.\n", a43);

  IOWR(MY_NEW_COMPONENT_0_BASE,16,a44);
  printf ("Writing [0x%x] to a44 register.\n", a44);

  IOWR(MY_NEW_COMPONENT_0_BASE,17,x1);
  printf ("Writing [0x%x] to x1 register.\n", x1);

  IOWR(MY_NEW_COMPONENT_0_BASE,18,x2);
  printf ("Writing [0x%x] to x2 register.\n", x2);

  IOWR(MY_NEW_COMPONENT_0_BASE,19,x3);
  printf ("Writing [0x%x] to x3 register.\n", x3);

  IOWR(MY_NEW_COMPONENT_0_BASE,20,x4);
  printf ("Writing [0x%x] to x4 register.\n", x4);

  printf ("Writing 0x1 to control/status register to trigger the operation.\n");
  IOWR(MY_NEW_COMPONENT_0_BASE,0,0x1);

  unsigned int status ;
  do {
      status = IORD(MY_NEW_COMPONENT_0_BASE,0);
  }
  while (0!= status);
  printf("status is 0. Reading the result register.\n");

  unsigned int b1 = IORD (MY_NEW_COMPONENT_0_BASE,21);
  printf("Result = [0x%0x]\n", b1);
  unsigned int b2 = IORD (MY_NEW_COMPONENT_0_BASE,22);
  printf("Result = [0x%0x]\n", b2);
  unsigned int b3 = IORD (MY_NEW_COMPONENT_0_BASE,23);
  printf("Result = [0x%0x]\n", b3);
  unsigned int b4 = IORD (MY_NEW_COMPONENT_0_BASE,24);
  printf("Result = [0x%0x]\n", b4);

  /* Event loop never exits. */
  while (1);

  return 0;
}



