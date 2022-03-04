void display_image(int x, const uint8_t *data);
void display_init(void);
void display_string(int line, char *s);
void display_update(void);
uint8_t spi_send_recv(uint8_t data);

void quicksleep(int cyc);

extern const uint8_t const font[128*8];
extern const uint8_t const icon[128];
extern char textbuffer[4][16];

void delay(int);

//Egna
uint8_t display[32][128]; // dispaly 32x128 mänskliga läsbara pixlar, position och aktivation
uint8_t oled_display[512]; //Dator läsbara pixlar, position och aktivation

uint8_t ormX[100];
uint8_t ormY[100];

int main(void);
void display_start();
void clear_display();
void translateToImage();
void Spel();
void skapa_orm();
int poang;

typedef struct Orm //Obijekt orm (snake)
{
    uint8_t *y;
    uint8_t *x;
    int langd;
    char riktning;
} Orm;

Orm orm;
