//���������Ŀ�ӿڵĺ꼰�ṹ�嶨���ļ�
#ifndef _VZ_CLIENT_SDK_HJT212_DEFINE_H_
#define _VZ_CLIENT_SDK_HJT212_DEFINE_H_

//�ж�IVSProtocolInput::strDetailΪVZ_IVS_PROTOCOL_ALARM_HJT212_DETAIL��
//����Խ�IVSProtocolInput::pParam����ת��ΪVZ_HJT212_DataInfo�Ա��һ������
#define VZ_IVS_PROTOCOL_ALARM_HJT212_DETAIL		"t212data"		//:VZ_HJT212_DataInfo
#define VZ_IVS_PROTOCOL_CONFIG_HJT212_DETAIL	"HJT212Config"	//:VZ_HJT212_ConfigInfo

#define VZ_HJT212_PARAM_POLL_NUM	32	//�豸ͬʱ������Ⱦ����������

#define VZ_HJT212_ITEM_CODE_MAXLEN	4
#define VZ_HJT212_ITEM_NAME_MAXLEN	16
#define VZ_HJT212_ITEM_UNIT_MAXLEN	8
#define VZ_HJT212_ITEM_VALUE_MAXLEN	16

#define VZ_HJT212_TIME_MAXLEN	16
#define VZ_HJT212_SOURCE_STRING_MAXLEN	1036	//ԭʼ�ɼ����ַ�����󳤶ȣ���t212Э��Ϊ1036

//�������ϸ��Ϣ
typedef struct VZ_HJT212_ItemInfoDetail{
	char code[VZ_HJT212_ITEM_CODE_MAXLEN];	//��׼����
	char name[VZ_HJT212_ITEM_NAME_MAXLEN];	//���ƣ���ͨ��API�Զ������ƣ�����Ϊ��׼����
	float min;	//�趨�ı�����Χ����
	float max;	//�趨�ı�����Χ����
	char unit[VZ_HJT212_ITEM_UNIT_MAXLEN];	//��λ��ͨ��API��������Ч�ģ�ֻ����API����
	int isdisplay;
}VZ_HJT212_ItemInfoDetail;

//������ϸ��Ϣ������
typedef struct VZ_HJT212_ItemInfo{
	VZ_HJT212_ItemInfoDetail itemInfo[VZ_HJT212_PARAM_POLL_NUM];
	int itemInfo_num;
}VZ_HJT212_ItemInfo;

typedef struct VZ_HJT212_Item{
	char code[VZ_HJT212_PARAM_POLL_NUM][VZ_HJT212_ITEM_CODE_MAXLEN];
}VZ_HJT212_Item;

typedef struct VZ_HJT212_OSD{
	unsigned int Firstitem_pos;
	unsigned int Gap_pos;
}VZ_HJT212_OSD;

//���õ�OSD���ò���
//��ʼλ�ã�startX��startY���������ͼ��ߴ�Ϊ4CIF��704x576�����������
typedef struct VZ_HJT212_OSD_Readable{
	int startX;		//��ʾ����ʼλ��X���꣨���704�����ޣ�
	int startY;		//��ʾ����ʼλ��Y���꣨���576�����ޣ�
	int gapRow;		//�м��
	int gapCol;		//�м��
}VZ_HJT212_OSD_Readable;

//��������������Ĵ������ò���
typedef struct VZ_HJT212_Serial{
	unsigned int    PtzComm;        //���ںţ�ʹ��2��
	unsigned int    BaudRate;       //���ڲ����� eg:9600 , 19200, 56000, etc
	unsigned int    Parity;         //����У��λ ��ֵΪ0-4=no,odd,even,mark,space
	unsigned int    DataBits;       //��������λ ��ֵΪ4-8=4,5,6,7,8 λ����λ
	unsigned int    StopBit;        //����ֹͣλ ��ֵΪ0,1,2 = 1, 1.5, 2 λֹͣλ
	unsigned int	Type;	    //Э�����ͣ����磺HJ/T 212��2005
}VZ_HJT212_Serial;

//�����������ݵķ�������ַ
typedef struct VZ_HJT212_Server{
	char hostname[32];
	int port;
}VZ_HJT212_Server;

typedef struct VZ_HJT212_Cfg{
	VZ_HJT212_OSD osd;	
	VZ_HJT212_Serial serial;
	unsigned char alarm_stream_enable;
	VZ_HJT212_Server server;
}VZ_HJT212_Cfg;

//����ķ�������
typedef struct VZ_HJT212_ItemDataDetail{
	char code[VZ_HJT212_ITEM_CODE_MAXLEN];	//��׼����
	int bAlarm;		//������־����0δ������1������-1δ�ɼ�����
	char strRTD[VZ_HJT212_ITEM_VALUE_MAXLEN];	//��Ⱦ��ʵʱ��������
}VZ_HJT212_ItemDataDetail;

//���ص�������Ϣ
typedef struct VZ_HJT212_DataInfo{
	char strDataTime[VZ_HJT212_TIME_MAXLEN];		//����ʱ��
	int numPolls;		//��Ч����Ⱦ�����
	VZ_HJT212_ItemDataDetail struData[VZ_HJT212_PARAM_POLL_NUM];	//��Ⱦ���������
	char strSrc[VZ_HJT212_SOURCE_STRING_MAXLEN + 8];			//ԭʼ�ɼ����ַ�������t212Э��maxlen=1036
}VZ_HJT212_DataInfo;


//���ص�������Ϣ
typedef struct VZ_HJT212_ConfigInfo{
	VZ_HJT212_ItemInfo struItemInfo;
	VZ_HJT212_OSD_Readable struOSDConfig;
}VZ_HJT212_ConfigInfo;

#endif
