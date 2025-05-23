
#--------------------------------------------
# Zagadnienia
    namespace   - przestrzeń nazw -
        służy do grupowania kodu /unkniecie konfliktów
        grupowanie funkcji zmiennych klas i nadanie im unikalnych nazw " imie z prefiksem"
        -- tworzone żeby uniknąc kolizji nazw

        np:
            int print() {
                return 1;
            }

            int print() {
                return 2; // ❌ Błąd! Funkcja już istnieje
            }
        nie może byc takich samych nazw i deklaracji funkcji 
            namespace A {
                int print() {
                    return 1;
                }
            }

            namespace B {
                int print() {
                    return 2;
                }
            }

    skrót do użycia zmiennych nazw bez std:: 
    using namespace dany namespace

    std::cout
        używa obiektu cout z danej przestrzeni


#----------------------------------
Operatory:
    :: -- operator zakresu - scope resolution operator 
        Gdzie używamy:
            - namespaces
                std::cout
            
            - klasy (funkcje statyczne) 
                Klasa::funkcjaStatyczna()

            -- wewntrz metod (indefinicja)
                Klasa::myMethod()

            -- globalny zarkes
                ::main - 


    Operatory binarne:
    << -- przesuniecie bitowe w lewo  x << 2 ( czyli x * 4)
    >> -- przesuniecie bitowe w prawo x >> 1 ( czyli x / 2)

        00011 - 3  << przesuwamy bity w lewo 00110 - 6 czyli razy 2 
        00110 - 6   >> przesuwamy bity w prawo 00011 - 3  czyli podzieoen przez 2 


    Przeciążanie operatorów:


#----------------------------------
Pliczki:
    .hpp -- pliki nagłowkowe czyli takie ktore
        przechowujaca samą deklaracje funkcji klas struktur typów zmiennych globalnych
            co jest dostepne ale bez okreslenia co robi
    .

#------------------------------
Dyrektywy procesora: # 
    -- to sa komendy dla preprocesora C++, który działą jeszcze zanim program sie kompiluje 
    najważniejsze
        #include --dołącza plik 
        #define - tworzy makro 
        #ifdef -- sprawdzenie czy jest cos zdefinowane #define
        #ifndef -- sprawdza czy nie ma takiej definicji
        #endif - # konczy ifdef ifndef
        #pragma once -- alternatywa dla ifndef -- dodaj ten plik tylko raz
        #undef -- usuwa definicje makra

        #ifdef /ndef -- jesli czegos nie/zdeklarowano to robimy to 
        działanie na poziomie całego projektu, sprawdza czy gdzies to juz nie było zadeklarowane


    Makro
        - zastępowanie tekstu przed kompilacją 
        #define PI 3.14
            zanim kod trafi do kompilatora, każde PI będzie zastąpione 3.14
            rodzaje makr:
                stałe define PI 3.14
                pseudo funkcje -> #define DODAJ(a,b ) ((a) + (b))
                flagi #define dodawanie_hpp -- mówi preporcesorowi że dana rzecz po prostu że makro istnieje 


g++ main.cpp functions.cpp -o main.exe
    linkowanie implementacji interfacu

#-----------------
Klasy
    Specyfikatory dostępu   
        public: wszedzie dostep 
        private : tylko sama klasa, uikrytwa dane 
        protected : sama klasa + pochodne - dziedziczaca klasa ma dostep
    
Konstruktory:
    automatycznie przy utworzeniu obiektu klasy


this -> wskaźnik na obiekt klasy 
    this->message -- odwołujesz sie do atrybutu obiektu klasy
    this->show - odwołujesz sie do metody klasy 

Styl C++:
    Klasy - PascalCase - MessageMenager
    Metody: camelCase - siemanoKolano
    zmienne: camelCase - messageValue
    stałe / makra : UPPER_SNAKE_CASE: MAX_LENGTH
    nazwy plikjów: snake_case  - message_manager.cpp


void f1(std::string s);              // kopia
void f2(std::string& s);             // referencja (ale można zmienić)
void f3(const std::string& s);       // referencja tylko do odczytu ✅
