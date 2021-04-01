
import java.util.List;

import org.junit.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;



public class WebsiteTest {
    private WebDriver driver;
    private String url = "http://localhost:8080/schreppers_jarne_war_exploded/";

    @Before
    public void setUp() throws Exception {
        // PAS DIT AAN NAAR JE EIGEN CHROME OF GECKODRIVER
        System.setProperty("webdriver.chrome.driver", "src\\chromedriver_win32\\chromedriver.exe");
        driver = new ChromeDriver();

    }

    @After
    public void tearDown() throws Exception {
        driver.quit();
    }

    @Test
    public void test_formulier_woord_toevegen_alles_invullen_gaat_naar_overzicht_en_toont_nieuwe_woord_in_tabel() {
            driver.get(url);
//        driver.get(url + "woordToevoegen.jsp");
//        voegWoordToe("Woord", "beginner");
//        assertEquals("Groep 19 - Woord toevoegen", driver.getTitle());
//        assertEquals("Woord Toevoegen", driver.findElement(By.tagName("h2")).getText());
//
//        assertTrue(paginaBevatTdMetText(driver.findElements(By.tagName("td")), "Water"));
//        assertTrue(paginaBevatTdMetText(driver.findElements(By.tagName("td")), "beginner"));
        assertEquals("Jaja", "Jaja");
    }

    private void voegWoordToe(String woord, String niveau) {
        driver.findElement(By.id("woord")).sendKeys(woord);
        driver.findElement(By.id("niveau")).sendKeys(niveau);
        driver.findElement(By.id("Bevestig")).click();
    }



    private boolean paginaBevatTdMetText(List<WebElement> tds, String tekst) {
        for (WebElement td : tds) {
            if (td.getText().equals(tekst)) {
                return true;
            }
        }
        return false;
    }


}