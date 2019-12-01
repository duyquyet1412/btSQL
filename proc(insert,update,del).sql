create proc insertcontent(
	@c_id int,
	@c_name varchar(255),
	@c_date datetime,
	@c_used varchar(255),
	@c_difficult varchar(255),
	@l_id int,
	@s_id int,
	@c_thinking varchar(255)
)
as
begin
	insert into content values (@c_id,@c_name,@c_date,@c_used,@c_difficult,@l_id,@s_id,@c_thinking)
end
exec insertcontent '1','data','12-02-2018','hieudata','khonho','1','1','binhthuong'

-- insert proc office -- 

create proc insertoff(
@O_id int, @O_name varchar(255))
as
begin
insert into office values(@O_id,@O_name)
end
exec insertoff '2','ketoan'
select * from office

-- update off -- 
alter proc updateoff(
	@O_id int, 
	@O_name varchar(255)
)as
begin
 update office set O_name = @O_name where O_id = @O_id
end
exec updateoff '2', 'abc'
select * from office

create proc deloff(
	@O_id int
)
as 
begin
delete office where O_id = @O_id
end
exec deloff  '2'