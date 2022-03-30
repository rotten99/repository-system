import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class FileIO {


    ArrayList<String> readGameData() {
        File file = new File("src/data.txt");
        ArrayList<String> data = new ArrayList<>();
        try {
            Scanner scan = new Scanner(file);
            String header = scan.nextLine();
            while (scan.hasNextLine()) {
                data.add(scan.nextLine());//“Egon: 30000”
            }
        } catch (FileNotFoundException e) {
            data = null;
        }
        return data;
    }




    //Gruppens arbejde:
    public String[] readFieldData() {

        File file = new File("src/fieldData.csv");
        String[] data = new String[40];

        try {
            Scanner scan = new Scanner(file);
            int i = 0; //counter variabel

           String header = scan.nextLine();//Ignorer header

            while (scan.hasNextLine()) {
                data[i]=scan.nextLine();
                i++;
               // data.add();
            }
        } catch (FileNotFoundException e) {

            data = null;
        }
        return data;
        }


        public void saveGameData(ArrayList<Player> data)
        {
            StringBuilder gameData = new StringBuilder("Name, Balance, Position\n");
            for(Player p: data)
            {
                gameData.append(p.getName()).append(", ").append(p.getBalance()).append(", ").append(p.getCurrentPosition()).append("\n");
            }
            try
            {
                FileWriter output = new FileWriter("src/data.txt");
                output.write(gameData.toString());
                output.close();

            }
            catch (IOException e)
            {
                e.getStackTrace();
            }
        }
}