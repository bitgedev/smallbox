package vo;

import java.sql.Date;
import java.sql.Time;

public class ReserveBean {
	private int res_idx;
	private int res_num;
	private int theater_idx;
	private String theater_title;
	private String member_id;
	private Date res_date;
	private Time res_time;
	private String res_seat;
	private int res_pay_type;
	private int res_price;
	public int getRes_idx() {
		return res_idx;
	}
	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public int getTheater_idx() {
		return theater_idx;
	}
	public void setTheater_idx(int theater_idx) {
		this.theater_idx = theater_idx;
	}
	public String getTheater_title() {
		return theater_title;
	}
	public void setTheater_title(String theater_title) {
		this.theater_title = theater_title;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public Time getRes_time() {
		return res_time;
	}
	public void setRes_time(Time res_time) {
		this.res_time = res_time;
	}
	public String getRes_seat() {
		return res_seat;
	}
	public void setRes_seat(String res_seat) {
		this.res_seat = res_seat;
	}
	public int getRes_pay_type() {
		return res_pay_type;
	}
	public void setRes_pay_type(int res_pay_type) {
		this.res_pay_type = res_pay_type;
	}
	public int getRes_price() {
		return res_price;
	}
	public void setRes_price(int res_price) {
		this.res_price = res_price;
	}
	@Override
	public String toString() {
		return "ReserveBean [res_idx=" + res_idx + ", res_num=" + res_num + ", theater_idx=" + theater_idx
				+ ", theater_title=" + theater_title + ", member_id=" + member_id + ", res_date=" + res_date
				+ ", res_time=" + res_time + ", res_seat=" + res_seat + ", res_pay_type=" + res_pay_type
				+ ", res_price=" + res_price + "]";
	}
	
}
