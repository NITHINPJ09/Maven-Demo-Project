package com.nithin.app;
import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class AppTest 
{
    App obj = new App();
    @Test
    public void testSum()
    {
        int expected = 40;
        int actual = obj.sum(10, 30);
        assertEquals(expected, actual);
    }
}
