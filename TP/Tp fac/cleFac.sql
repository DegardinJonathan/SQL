
alter table suit
drop foreign key fk_suit_num;
alter table suit
drop foreign key fk_suit_code;


alter table etu
drop primary key;

alter table cours
drop primary key;


alter table suit
drop primary key;

alter table etu
add constraint pk_etu primary key (num);

alter table cours
add constraint pk_cours primary key (code);

alter table suit
add constraint Pk_suit primary key (num,code);


alter table suit
add constraint fk_suit_num foreign key (num) references etu (num);



alter table suit
add constraint fk_suit_code foreign key (code) references cours (code);



describe etu;
describe suit;
describe cours;