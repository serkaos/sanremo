package esercitazioneSanremo;

public class dettagliCantanti {

    String nome;
    String cognome;
    String canzone;
    String immagine;
	String orario=null;
    int pos;
    int neg;
	public dettagliCantanti() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public dettagliCantanti(String nome, String cognome, String canzone, String immagine, String orario, int pos,
			int neg) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.canzone = canzone;
		this.immagine = immagine;
		this.orario = orario;
		this.pos = pos;
		this.neg = neg;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getCanzone() {
		return canzone;
	}
	public void setCanzone(String canzone) {
		this.canzone = canzone;
	}
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public int getNeg() {
		return neg;
	}
	public void setNeg(int neg) {
		this.neg = neg;
	}
	public String getOrario() {
		return orario;
	}
    public void setOrario(String orario) {
  	    this.orario = orario;
    }
	

}
