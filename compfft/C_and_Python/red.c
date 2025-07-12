#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <inttypes.h> // For PRIu64

int main()
{
  FILE *fp= fopen("red.txt"  , "w");
  if (fp == NULL) {
    perror("Error opening file");
    return 1;
  }
  
  int fd;
  uint32_t count;
  uint32_t k;
  uint64_t l;
  void *cfg;
  void *dat;
  void *cat;
  char *name = "/dev/mem";
  const int freq = 125000000; // Hz
  int Ncycles; 
  int a=0;
  uint64_t red[1024];
  if((fd = open(name, O_RDWR)) < 0)
  {
    perror("open");
    return 1;
  }

  dat = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x40000000);
  cat=mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);
  cfg = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x41200000);
 
  sleep(1); // wait for the system to be ready
  *((uint32_t *)(cfg + 0)) = 1;
  sleep(1); // wait for the system to be ready
  *((uint32_t *)(cfg + 0)) = 0;

  while(count = *((uint32_t *)(cfg + 4))<1);
  a=0;
  while (a<1024){
    k = (*((uint32_t *)(cat + 4*a)));
    l = ((uint64_t)k);
    l=l<<32;
    l = l| (*((uint32_t *)(dat + 4*a)));
    printf("red[%d] = %" PRIu64 "\n", a, l);
    fprintf(fp,"%" PRIu64 "\n",l);
    a++;
  }
fclose(fp); 
  munmap(cfg, sysconf(_SC_PAGESIZE));
  return 0;
}