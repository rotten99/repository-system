public class Property extends Field {
    private int seriesID;
    private Player owner;

    public Property( int id, String label, int cost, int income, int seriesID ) {
        super(id, label, cost, income);
        this.seriesID = seriesID;
    }

    protected String onAccept(Player player) {
        String message = "";
        if (this.currentOption.equals("buy")) {
            player.buyProperty(cost,id);
            message = player.getName() + " købte "+this.label+". Ny saldo: "+player.getBalance();
            owner = player;
        }else if(this.currentOption.equals("payRent")){
            player.payRent(this.income, owner);
            message = player.getName() + " betalte "+this.income+"kr i husleje til "+this.owner.getName()+". Ny saldo: "+player.getBalance();
        }
        return message;
    }

    protected String onReject(Player player) {
        String message = "";
        if (this.currentOption.equals("buy")) {
            message = player.getName() + " købte IKKE "+this.label;
        }
        return message;
    }

    public String onLand(Player player) {
        String message = super.onLand(player);

        if (owner == null) {
            currentOption = "buy";
            message += "Vil du købe?  \nTast A for accept, R for reject";
        } else if (owner == player) {
            currentOption = "build"; //Currentoption build
            message += "Du ejer denne grund, vil du opgradere dit grund? \nTast A for accept, R for for reject";
        } else {
            currentOption = "payRent"; //Currentoption payRent
            message += this.owner.getName()+" ejer denne grund. Betal "+this.income+" i husleje.\nTast A for accept, R for reject";
        }

        return message;
    }
}
