//���ӿڵĺ꼰�ṹ�嶨���ļ�
#ifndef _VZ_CLIENT_SDK_WATTHM_DEFINE_H_
#define _VZ_CLIENT_SDK_WATTHM_DEFINE_H_

//�ж�IVSProtocolInput::strDetailΪVZ_IVS_PROTOCOL_ALARM_HJT212_DETAIL��
//����Խ�IVSProtocolInput::pParam����ת��ΪVZ_WATTHM_DataInfo�Ա��һ������
#define VZ_IVS_PROTOCOL_CONFIG_WATTHM_DETAIL	"Watt_hour_meterConfig"	//:VZ_WATTHM_ConfigInfo

#define VZ_WATTHM_PARAM_MAX_NUM	16	//�豸ͬʱ���ĵ�����������

#define VZ_WATTHM_ITEM_CODE_MAXLEN	4
#define VZ_WATTHM_ITEM_NAME_MAXLEN	16
#define VZ_WATTHM_ITEM_UNIT_MAXLEN	8

//�������ϸ��Ϣ
typedef struct VZ_WATTHM_ItemInfoDetail{
	char code[VZ_WATTHM_ITEM_CODE_MAXLEN];	//��׼����
	char name[VZ_WATTHM_ITEM_NAME_MAXLEN];	//���ƣ���ͨ��API�Զ������ƣ�����Ϊ��׼����
	float min;	//�趨�ı�����Χ����
	float max;	//�趨�ı�����Χ����
	char unit[VZ_WATTHM_ITEM_UNIT_MAXLEN];	//��λ��ͨ��API��������Ч�ģ�ֻ����API����
	int isdisplay;
}VZ_WATTHM_ItemInfoDetail;

//������ϸ��Ϣ������
typedef struct VZ_WATTHM_ItemInfo{
	VZ_WATTHM_ItemInfoDetail itemInfo[VZ_WATTHM_PARAM_MAX_NUM];
	int itemInfo_num;
}VZ_WATTHM_ItemInfo;

typedef struct VZ_WATTHM_Item{
	char code[VZ_WATTHM_PARAM_MAX_NUM][VZ_WATTHM_ITEM_CODE_MAXLEN];
}VZ_WATTHM_Item;


//���õ�OSD���ò���
//��ʼλ�ã�startX��startY���������ͼ��ߴ�Ϊ4CIF��704x576�����������
typedef struct VZ_WATT_OSD_Readable{
	int startX;		//��ʾ����ʼλ��X���꣨���704�����ޣ�
	int startY;		//��ʾ����ʼλ��Y���꣨���576�����ޣ�
	int gapRow;		//�м��
	int gapCol;		//�м��
}VZ_WATT_OSD_Readable;

typedef struct VZ_WATTHM_OSD{
	unsigned int Firstitem_pos;
	unsigned int Gap_pos;
}VZ_WATTHM_OSD;

//��������������Ĵ������ò���
typedef struct VZ_WATTHM_Serial{
	unsigned int    PtzComm;        //���ںţ�ʹ��2��
	unsigned int    BaudRate;       //���ڲ����� eg:9600 , 19200, 56000, etc
	unsigned int    Parity;         //����У��λ ��ֵΪ0-4=no,odd,even,mark,space
	unsigned int    DataBits;       //��������λ ��ֵΪ4-8=4,5,6,7,8 λ����λ
	unsigned int    StopBit;        //����ֹͣλ ��ֵΪ0,1,2 = 1, 1.5, 2 λֹͣλ
	unsigned int	Type;	    //Э�����ͣ����磺HJ/T 212��2005
}VZ_WATTHM_Serial;

typedef struct {
	VZ_WATTHM_OSD osd;	
	VZ_WATTHM_Serial serial;
}VZ_WattHM_UserCfg;


#endif
