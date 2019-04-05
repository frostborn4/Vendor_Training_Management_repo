package trm.it.dao.internalTrainingRequest;

public class InternalTrainingRequest
{
	/*
	  internal_training_id number(5) primary key,
	  training_request_id number(5) CONSTRAINT itr_tr_fk references training_request(training_request_id) unique not null,
	  training_type varchar(20)
	  schedule_id number(5) CONSTRAINT itr_sched_fk references training_schedule(training_schedule_id) unique,
	  confirmed_trainer_id number(7) CONSTRAINT itr_train_fk references internal_trainer(it_trainer_id),
	  executive_id number(7) CONSTRAINT tr_exec_fk references employee(employee_id),
	  description_of_status varchar(30)
	*/
	
	private int internal_training_id;
	private int training_request_id;		//Training Request join
	private String training_type;
	private String schedule; 					//Training Schedule join
	private int confirmed_trainer;			//Internal Trainer join
	private int executive;					//Employee join
	private String description_of_status;
	
	/***********************
	 * GETTERS AND SETTERS * 
	 ***********************/	
	public void display(){
		System.out.println("Internal Training ID: "+ internal_training_id);
		System.out.println("Training Request ID: "+ training_request_id);
		System.out.println("Schedule: " + schedule);
		System.out.println("Trainer: "+ confirmed_trainer);
		System.out.println("Executive: " + executive);
		System.out.println("Description of Status: " + description_of_status);
	}
	
	public int getInternal_training_id()
	{
		return internal_training_id;
	}
	public void setInternal_training_id(int internal_training_id)
	{
		this.internal_training_id = internal_training_id;
	}
	public String getSchedule()
	{
		return schedule;
	}
	public void setSchedule(String schedule)
	{
		this.schedule = schedule;
	}
	public int getConfirmed_trainer()
	{
		return confirmed_trainer;
	}
	public void setConfirmed_trainer(int confirmed_trainer)
	{
		this.confirmed_trainer = confirmed_trainer;
	}
	public int getExecutive()
	{
		return executive;
	}
	public void setExecutive(int executive)
	{
		this.executive = executive;
	}
	public String getDescription_of_status()
	{
		return description_of_status;
	}
	public void setDescription_of_status(String description_of_status)
	{
		this.description_of_status = description_of_status;
	}
	public int getTRI() { //renamed to avoid conflicts with int's getTraining_request_id function
		return training_request_id;
	}
	public void setTRI(int training_request_id) {//renamed to avoid conflicts with int's setTraining_request_id function
		this.training_request_id = training_request_id;
	}

	public int getTraining_request_id() {
		return training_request_id;
	}

	public void setTraining_request_id(int training_request_id) {
		this.training_request_id = training_request_id;
	}

	public String getTraining_type() {
		return training_type;
	}

	public void setTraining_type(String training_type) {
		this.training_type = training_type;
	}	
}