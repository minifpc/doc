/**
 * \defgroup fpc_compiler Der Free Pascal Compiler - FPC
 * @{
 * \defgroup page0 Schlüsselwörter
 * \ingroup  fpc_compiler
 * @{
 *
 * \defgroup pageA Aufzählungen
 * \ingroup  page0
 * @{
 * \defgroup pageAA ENUM
 * \ingroup  pageA
 * @{
 * ein enum
 * @}  \noop Gruppe: ENUM
 * \defgroup pageAB SET
 * \ingroup  pageA
 * @{
 * ein set
 * @}  \noop Gruppe: SET
 * @}  \noop Gruppe: Aufzählungen
 *
 * \defgroup pageB Schleifen
 * \ingroup  page0
 * @{
 * \defgroup pageBA DO
 * \ingroup  pageB
 * @{
 * ein do
 * @}  \noop Gruppe: DO
 * \defgroup pageBB FOR
 * \ingroup  pageB
 * @{
 * ein for
 * @}  \noop Gruppe: FOR
 * \defgroup pageBC LOOP
 * \ingroup  pageB
 * @{
 * ein loop
 * @}  \noop Gruppe: LOOP
 * \defgroup pageBD UNTIL
 * \ingroup  pageB
 * @{
 * ein until
 * @}  \noop Gruppe: UNTIL
 * \defgroup pageBE WHULE
 * \ingroup  pageB
 * @{
 * eine while
 * @}  \noop Gruppe: WHILE
 * @}  \noop Gruppe: Schleifen
 *
 * \defgroup pageC Bedingungen
 * \ingroup  page0
 * @{
 * \defgroup pageCA IF
 * \ingroup  pageC
 * @{
 * ein IF
 * @}  \noop Gruppe: IF
 * \defgroup pageCB ELSE
 * \ingroup  pageC
 * @{
 * ein ELSE
 * @}  \noop Gruppe: ELSE
 * \defgroup pageCC CASE
 * \ingroup  pageC
 * @{
 * ein case
 * @}  \noop Gruppe: CASE
 * @}  \noop Gruppe: Bedingungen
 *
 * @}  \noop Gruppe: Schlüsselwörter
 * @}  \noop Gruppe: fpc_compiler
 */

/**
 * \defgroup gcc_compiler Der GNU C/C++ Compiler
 * @{
 * Dies ist die zweite Hauptseite.
 *
 * \defgroup keywords_cc Schlüsselwörter
 * \ingroup  gcc_compiler
 * @{
 * \defgroup typedef typedef
 * \ingroup  keywords_cc
 * @{
 * `typedef` ist ein Schlüsselwort in C und C++, das verwendet wird, um Aliasnamen für bestehende Datentypen zu erstellen.
 * Es ermöglicht, komplexe Typen zu vereinfachen und fördert die Lesbarkeit des Codes.
 *
 * # Verwendung
 * Die grundlegende Syntax für typedef ist:
 * \code
 * typedef existierender_typ neuer_typ_name;
 * \endcode
 *
 * # Beispiel
 * \code
 * typedef unsigned long ulong;
 * \endcode
 *
 * In diesem Beispiel wird `ulong` als Alias für `unsigned long` definiert. Dies ist besonders
 * nützlich, wenn ein Typ in vielen Teilen des Codes verwendet wird und ein kürzerer oder klarerer
 * Name bevorzugt wird.
 * 
 * # Vorteile
 * - **Kürzere Typnamen:** Typen können kürzer und prägnanter gemacht werden.
 * - **Lesbarkeit:** Komplexe Typen können unter einem verständlicheren Namen zusammengefasst werden.
 * - **Flexibilität:** Änderungen an der zugrunde liegenden Typdefinition können zentral vorgenommen werden, ohne dass der gesamte Code geändert werden muss.
 *
 * # Typische Anwendungsfälle
 * - Definieren von Aliasnamen für strukturierte Typen:
 * \code
 * typedef struct {
 *     int x;
 *     int y;
 * } Point;
 * \endcode
 * - Vereinfachung von Funktionszeigern:
 * \code
 * typedef int (*OperationFunc)(int, int);
 * \endcode
 *
 * Weitere Informationen zu `typedef` finden Sie in der offiziellen [C++ Dokumentation](https://en.cppreference.com/w/cpp/language/typedef).
 *
 * \defgroup  typedef_types Varianten
 * \ingroup   typedef
 * @{
 * \defgroup  typedef_size_t size_t
 * \ingroup   typedef_types
 * @{
 * definiert einen ssss 32
 * \code
 * typedef unsigned int size_t;
 * \endcode
 * @}
 * \defgroup  typedef_wchar_t wchar_t
 * \ingroup   typedef_types
 * @{
 * Ein Datentyp für breite Zeichen.
 *
 * wchar_t ist ein spezieller Datentyp in C und C++, der verwendet wird, um breite Zeichen zu speichern,
 * normalerweise für die Arbeit mit Unicode-Zeichen.
 * Die genaue Größe von wchar_t kann je nach System variieren,
 * aber er ist in der Regel groß genug, um alle gültigen Unicode-Zeichen darzustellen.
 *
 * Der wchar_t Typ wird häufig in Programmen verwendet, die internationalisiert sind
 * und Zeichen in verschiedenen Schriftsystemen unterstützen müssen.
 * Er kann mit Standardfunktionen wie wprintf, wscanf und wcslen verwendet werden.
 * \code
 * typedef int wchar_t;
 * \endcode
 * @}   \noop Gruppe: typedef_wchar_t
 * @}   \noop Gruppe: typedef_types
 * @}   \noop Gruppe: typedef
 *
 * \defgroup  enum Aufzählungen
 * \ingroup   keywords_cc
 * @{
 * Aufzahl
 *
 * \defgroup  enum_enum enum
 * \ingroup   enum
 * @{
 * enum
 * @}   \noop Gruppe: enum_enum
 *
 * \defgroup  enum_class enum class
 * \ingroup   enum
 * @{
 * enum class
 * @}   \noop Gruppe: enum_class
 * @}   \noop Gruppe: enum
 *
 * \defgroup  loops Schleifen
 * \ingroup   keywords_cc
 * @{
 * einige schleifen
 *
 * \defgroup  loops_for for
 * \ingroup   loops
 * @{
 * eine for
 * @}   \noop Gruppe: for
 *
 * \defgroup  loops_while while
 * \ingroup   loops
 * @{
 * ein while
 * @}   \noop Gruppe: while
 * @}   \noop Gruppe: Schleifen
 *
 * \defgroup  condition_cc Bedingungen
 * \ingroup   keywords_cc
 * @{
 * IF Bedingte bearbeten
 *
 * \defgroup  condition_if if
 * \ingroup   condition_cc
 * @{
 * ifer
 * @}   \noop Gruppe: if
 *
 * \defgroup  condition_else else
 * \ingroup   condition_cc
 * @{
 * ELSE Bedingte bearbeten
 * @}   \noop Gruppe: else
 * @}   \noop Gruppe: Bedingungen
 *
 * @}   \noop Gruppe: keywords
 * @}   \noop Gruppe: gcc_compiler
 */
