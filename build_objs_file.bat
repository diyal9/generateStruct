@echo off

::��excel�е�ǰ����ת��Ϊstruct
::��һ���ֶ�����		�� int
::�ڶ����ֶα�ע		�� ���ĵȼ�����
::�������ֶ���			�� id
::������s,c,all			s��ʾ�����ʹ��, c��ʾ�ͻ���ʹ��, all��ʾ��ʹ��

::����objs.go�ļ���·��
set savePath=F:\code\src\generateStruct\tool
::Ŀ��excel�ļ�·��
set readPath=F:\code\src\generateStruct
::���е��ֶ�����
set allType=int,IntSlice,IntSlice2,IntSlice3,IntMap,string,StringSlice,float64,Condition,Conditions,ItemInfo,ItemInfos,ItemInfosSlice,PropInfo,PropInfos,ProbItem,ProbItems,HmsTime,HmsTimes,Defenderweights
echo ��ʼ����objs.go�ļ� ע��:�����ļ�ʱ��Ҫ�رն�Ӧ��excel�ļ�
::%readPath%\generateStruct -savePath=%savePath% -readPath=%readPath% -allType=%allType%
generateStruct -savePath=%savePath% -readPath=%readPath% -allType=%allType%

echo ������ϣ������������
TIMEOUT /T 999

::
::	��Ŀ�����е��ֶ�����(ע���������͵Ĵ�Сд)
::	int				���� 				����:1
::	IntSlice		���͵�һά���� 	 	����:1,2,3
::	IntSlice2		���͵Ķ�ά����  	����:1,2,3;4,5,6
::	IntSlice3		���͵���ά����  	����:1,2;3,4|5,6;7,8
::	IntMap			k��v����int�ļ���  	����:1,2;3,4;5,6
::	string			�ַ���  			����:"��������¯"
::	StringSlice		�ַ��͵�һά����  	����:"��������¯","����ͭ¯"
::	float64			������  			����:1.5
::	Condition		k,v,map[int]int  	����:2,0
::	Conditions		Condition��һά���� ����:2,0;2,0
::	ItemInfo		��Ʒ��ϢItemId int, Count int 	����:3200071,1
::	ItemInfos		ItemInfo��һά���� 	����:3200071,1;3200072,1
::	ItemInfosSlice	ItemInfos��һά���� ����:[[3200071,1;3200072,1],[3200071,1;3200072,1]]
::	PropInfo		k int,v int  		����:3200071,1
::	PropInfos		PropInfo��һά����  ����:3200071,1;3200072,1
::	ProbItem		��Ʒ���伸�� id,count,prob ����:3200071,1,10
::	ProbItems		ProbItem��һά����  ����:3200071,1,10;3200072,1,5
::	HmsTime			ʱ������ 			����:06:00:00
::	HmsTimes		HmsTime��һά���� 	����:06:00:00;07:00:00
::	Defenderweights	��Ʒ����Ȩ��(��ţ�������Сֵ���������ֵ��Ȩ�أ�CD��) 	����:1,41,50,9,28800;1,41,50,9,28800
::
