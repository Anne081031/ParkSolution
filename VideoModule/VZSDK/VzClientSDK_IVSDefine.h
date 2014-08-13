#ifndef _VZ_CLIENT_SDK_IVS_DEFINE_H_
#define _VZ_CLIENT_SDK_IVS_DEFINE_H_

#include "VzClientSDK_CommonDefine.h"

//������Ƶ��ز���
//---------------------------------------------------------------------------
///-------------------vz alarm------------------------

#define VZ_IVS_MAX_RELATIVE_SHORT 0x4000

//�����������ԵĻ�ת
typedef short VZ_FIXPOINT_SHORT;
//FIXPOINT_SHORT����Ϊ �������Ķ�������ʾ��������Ҫ�����������Ľṹ�壬����ͨ�������IVS_I2S�����ת��
/*���磺
���ڷֱ���Ϊ640*480������㣨320��240��
�ú�IVS_I2S�����ǿ���ֱ�ӵõ�
VZ_FIXPOINT_SHORT x = IVS_I2S(320��640);
VZ_FIXPOINT_SHORT y = IVS_I2S(240��480);
*/
#define IVS_I2S(int_val,total) ((short)(((int)(int_val)<<14)/((int)(total))))
#define IVS_S2I(short_val,total) (((int)(short_val)*(total)+(1<<13))>>14)

//ivs״̬
#define VZ_IVS_TRAINING  1
#define VZ_IVS_DETECTING 2
#define VZ_IVS_NO_SIGNAL 3
#define VZ_IVS_TAMPER	 4

//
typedef struct _VZ_IVS_POINT{
	VZ_FIXPOINT_SHORT  X;//������귶Χ[0-VZ_IVS_MAX_RELATIVE_SHORT]
	VZ_FIXPOINT_SHORT  Y;
}VZ_IVS_POINT;//���������

typedef struct _VZ_IVS_LINE{
	VZ_IVS_POINT   struStart;
	VZ_IVS_POINT   struEnd;
}VZ_IVS_LINE;//�߽ṹ����

#define IVS_MAX_BROKEN_LINE_POINT_NUM 10
typedef struct _VZ_IVS_BROKEN_LINE{
	DWORD           dwPointNum;
	VZ_IVS_POINT   struPos[IVS_MAX_BROKEN_LINE_POINT_NUM];
}VZ_IVS_BROKEN_LINE;//�߽ṹ����

typedef struct _VZ_IVS_RECT{
	VZ_FIXPOINT_SHORT   X;//������귶Χ[0-VZ_IVS_MAX_RELATIVE_SHORT]
	VZ_FIXPOINT_SHORT   Y;
	VZ_FIXPOINT_SHORT   Width;
	VZ_FIXPOINT_SHORT   Height;
}VZ_IVS_RECT;//����

typedef struct _VZ_IVS_OBJSIZE_RANGE{
	WORD   Min;
	WORD   Max;
}VZ_IVS_OBJSIZE_RANGE;//����

//sizeof POLYGON	2*sizeof(float)*IVS_MAX_POLYGON_POINT_NUM+4 = 84
#define IVS_MAX_POLYGON_POINT_NUM 15
typedef struct _VZ_IVS_POLYGON{
	DWORD           dwPointNum;
	VZ_IVS_POINT   struPos[IVS_MAX_POLYGON_POINT_NUM];
}VZ_IVS_POLYGON;//�����

typedef enum _IVS_CROSS_DIRECTION{
	IVS_BOTH_DIRECTION  = 0,
	IVS_LEFT_GO_RIGHT   = 1,
	IVS_RIGHT_GO_LEFT   = 2
}IVS_CROSS_DIRECTION;//��Խ����

typedef struct _VZ_IVS_TRAVERSE_PLANE{
	VZ_IVS_BROKEN_LINE	  struPlaneBottom;
	IVS_CROSS_DIRECTION   dwCrossDirection;
	BYTE                  byRes1;
	BYTE                  byPlaneHeight;
	BYTE                  byRes2[38];
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_TRAVERSE_PLANE;//��Խ���������


typedef struct _VZ_IVS_TRAVERSE_PLANE_EXT{
	VZ_IVS_BROKEN_LINE	  struPlaneBottom;
	IVS_CROSS_DIRECTION   dwCrossDirection;
	BYTE				  byIsCalibed[IVS_MAX_BROKEN_LINE_POINT_NUM-1];
	VZ_IVS_LINE			  CalibLine[IVS_MAX_BROKEN_LINE_POINT_NUM-1];
}VZ_IVS_TRAVERSE_PLANE_EXT;//��Խ��������չ
/////////////////////////////////////////

typedef struct _VZ_IVS_ENTER_OUT{
	BYTE			  byEnable;
	BYTE			  byEnter;	// 0�뿪 1���� 2�����롢�뿪��ͬʱ���
	BYTE              byRes[2];
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_ENTER_OUT;//����/�뿪�������

typedef struct _VZ_IVS_INTRUSION{
	BYTE			  byEnable;
	BYTE              byRes[1];
	WORD              wDuration;
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_INTRUSION;//���ֲ���

typedef struct _VZ_IVS_LOITER{
	BYTE			    byEnable;
	BYTE				byRes[1];
	WORD				wDuration;
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_LOITER;//�ǻ�����

typedef struct _VZ_IVS_TAKE_LEFT{
	BYTE			  byEnable;
	BYTE			  byTake; // 0���� 1��� 2�������������ͬʱ���
	WORD              wDuration;
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_TAKE_LEFT;//����/�������

typedef struct _VZ_IVS_PARKING{
	BYTE			  byEnable;
	BYTE              byRes[1];
	WORD              wDuration;
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_PARKING;//ͣ������

typedef struct _VZ_IVS_RUN{
	BYTE			  byEnable;
	BYTE              byRes[1];
	VZ_FIXPOINT_SHORT              RunDistance;//������귶Χ[0-VZ_IVS_MAX_RELATIVE_SHORT]
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_RUN;//���ܲ���

typedef struct _VZ_IVS_HIGH_DENSITY{
	BYTE			  byEnable;
	BYTE              byRes[3];
	float             fDensity;
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_HIGH_DENSITY;	// ��Ա�ۼ�����

typedef struct _VZ_IVS_OIL_INTRUSION{
	BYTE			  byEnable;
	BYTE              byRes[7];
	VZ_IVS_OBJSIZE_RANGE  ObjectSize;
}VZ_IVS_OIL_INTRUSION; // �;����ֲ���

//����ʶ�����
typedef struct _VZ_IVS_LPR{
	BYTE					byEnable;
	BYTE					byRes[7];
	VZ_IVS_OBJSIZE_RANGE	struObjSize;
}VZ_IVS_LPR;

//�����������
typedef enum _HJ_DETECT_TYPE
{
	PIPE_WATER = 1,	//��ˮ�ŷ�
	BUBBLE,			//����
	EXHAUST_GAS,	//����
	HJ_DETECT_NUM
}
HJ_DETECT_TYPE;

typedef struct _VZ_IVS_HJ
{
	BYTE			byEnable;
	BYTE			byRes[1];
	HJ_DETECT_TYPE	dwDetectType;
}
VZ_IVS_HJ;	//����������

// �������
typedef struct _VZ_IVS_AREA{
	VZ_IVS_POLYGON			struRegion;
	BYTE					byRes[8];
	VZ_IVS_ENTER_OUT		struEnterOut;
	VZ_IVS_INTRUSION		struIntrusion;
	VZ_IVS_LOITER			struLoiter;
	VZ_IVS_TAKE_LEFT		struTakeLeft;
	VZ_IVS_PARKING			struParking;
	VZ_IVS_RUN				struRun;
	VZ_IVS_HIGH_DENSITY		struDensity;
	VZ_IVS_OIL_INTRUSION    struOilIntrusion;
}VZ_IVS_AREA;

typedef struct _VZ_IVS_AREA_EXT{
	VZ_IVS_POLYGON			struRegion;
	BYTE					byRes[8];
	VZ_IVS_HJ				struHJ;
	VZ_IVS_LPR				struLPR;
}VZ_IVS_AREA_EXT;

typedef union _VZ_IVS_EVENT_UNION{
	DWORD                   uLen[36];
	VZ_IVS_TRAVERSE_PLANE   struTraversePlane;
	VZ_IVS_TRAVERSE_PLANE_EXT struTraversePlaneExt;
	VZ_IVS_AREA             struArea;
	VZ_IVS_AREA_EXT			struAreaExt;
}VZ_IVS_EVENT_UNION;

typedef enum _IVS_RULE_TYPE{
	IVS_RULE_LINE = 0x1,	// ���߹���
	IVS_RULE_AREA = 0x2,	// �������
	IVS_RULE_LINE_EX,		//��չ�İ��߹���
	IVS_RULE_AREA_EX,		//��չ���������
}IVS_RULE_TYPE;

#define MAX_EVENT_NUM 32

enum
{
	OFFSET_TRAVERSE_PLANE = 0,	//��Խ������
	OFFSET_ENTER_AREA,			//Ŀ���������֧��������� 
	OFFSET_EXIT_AREA,			//Ŀ���뿪����֧���������
	OFFSET_INTRUSION,			//�ܽ����֣�֧��������� 
	OFFSET_LOITER,				//�ǻ���֧��������� 
	OFFSET_LEFT_TAKE,			//���������֧���������
	OFFSET_PARKING,				//ͣ����֧��������� 
	OFFSET_RUN,					//���ܣ�֧��������� 
	OFFSET_HIGH_DENSITY,		//��������Ա�ܶȣ�֧��������� 
	OFFSET_OIL_INTRUSION,		//�;�����
	OFFSET_FIRE_SMOKE,			//�̻��¼�
	OFFSET_PEOPLE_COUNT,		//����ͳ��
	OFFSET_PLATE_R,				//����ʶ��
	OFFSET_CAM_HEALTH,			//���������״�����
	OFFSET_CAR_COUNT,			//����ͳ��
	OFFSET_PLATE_R_SERVER,		//����ʶ���������
	OFFSET_AUTO_PTZ,			//PTZ�Զ������¼�
	OFFSET_HJ_PIPE_WATER,		//������ˮ
	OFFSET_HJ_BUBBLE,			//��������
	OFFSET_HJ_EXHAUST_GAS		//��������
};

typedef enum _IVS_EVENT_TYPE{
	IVS_TRAVERSE_PLANE	= 1<<OFFSET_TRAVERSE_PLANE,	//��Խ������ 
	IVS_ENTER_AREA		= 1<<OFFSET_ENTER_AREA,		//Ŀ���������֧��������� 
	IVS_EXIT_AREA		= 1<<OFFSET_EXIT_AREA,		//Ŀ���뿪����֧��������� 
	IVS_INTRUSION		= 1<<OFFSET_INTRUSION,		//�ܽ����֣�֧��������� 
	IVS_LOITER			= 1<<OFFSET_LOITER,			//�ǻ���֧��������� 
	IVS_LEFT_TAKE		= 1<<OFFSET_LEFT_TAKE,		//���������֧��������� 
	IVS_PARKING			= 1<<OFFSET_PARKING,		//ͣ����֧��������� 
	IVS_RUN				= 1<<OFFSET_RUN,			//���ܣ�֧��������� 
	IVS_HIGH_DENSITY	= 1<<OFFSET_HIGH_DENSITY,	//��������Ա�ܶȣ�֧��������� 
	IVS_OIL_INTRUSION	= 1<<OFFSET_OIL_INTRUSION,	//�;�����
	IVS_FIRE_SMOKE		= 1<<OFFSET_FIRE_SMOKE,		//�̻��¼�
	IVS_PEOPLE_COUNT	= 1<<OFFSET_PEOPLE_COUNT,	//����ͳ��
	IVS_PLATE_R			= 1<<OFFSET_PLATE_R,		//����ʶ��
	IVS_CAM_HEALTH		= 1<<OFFSET_CAM_HEALTH,		//���������״�����
	IVS_CAR_COUNT 		= 1<<OFFSET_CAR_COUNT,		//����ͳ��
	IVS_PLATE_R_SERVER	= 1<<OFFSET_PLATE_R_SERVER,	//����ʶ�������
	IVS_AUTO_PTZ		= 1<<OFFSET_AUTO_PTZ,		//PTZ�Զ������¼�
	IVS_HJ_PIPE_WATER	= 1<<OFFSET_HJ_PIPE_WATER,	//������ˮ
	IVS_HJ_BUBBLE	    = 1<<OFFSET_HJ_BUBBLE,		//��������
	IVS_HJ_EXHAUST_GAS	= 1<<OFFSET_HJ_EXHAUST_GAS	//��������
}IVS_EVENT_TYPE;

#define NAME_LEN 32
typedef struct _VZ_IVS_RULE_INFO{
	BYTE                  byRuleID;
	BYTE				  byEnable;
	BYTE				  byDrawbyDSP;
	BYTE                  byRes[1];
	char                  byRuleName[NAME_LEN];
	IVS_RULE_TYPE         dwRuleType;
	VZ_IVS_EVENT_UNION    uEventParam;
}VZ_IVS_RULE_INFO;//�¼�������Ϣ

/////////////////////////////////////////

#define MAX_RULE_NUM	8
typedef struct _VZ_IVS_RULE_CFG{
	DWORD			 dwRuleNum;
	VZ_IVS_RULE_INFO struRules[MAX_RULE_NUM];
}VZ_IVS_RULE_CFG;


#define	VZ_IVS_DAY_MON  0x01
#define	VZ_IVS_DAY_TUE  0x02
#define	VZ_IVS_DAY_WED  0x04
#define	VZ_IVS_DAY_THU  0x08
#define	VZ_IVS_DAY_FRI  0x10
#define	VZ_IVS_DAY_SAT  0x20
#define	VZ_IVS_DAY_SUN  0x40
#define VZ_IVS_DAY_NULL	0x80	//��ʾʹ��ÿ֡�����ʱ�������������ʱ����Ч

typedef struct _VZ_IVS_TIME_PERIOD{
	BYTE uStartHour;
	BYTE uStartMinute;
	BYTE uEndHour;
	BYTE uEndMinute;
}VZ_IVS_TIME_PERIOD;

#define MAX_TIME_PERIOD_NUM	4
#define MAX_WEEK_DAY 7
typedef struct _VZ_IVS_RULE_TIME_INFO{
	VZ_IVS_TIME_PERIOD struPeriod[MAX_WEEK_DAY][MAX_TIME_PERIOD_NUM];
}VZ_IVS_RULE_TIME_INFO;

typedef struct _VZ_IVS_RULE_TIME_CFG{
	VZ_IVS_RULE_TIME_INFO struRuleTimes[MAX_RULE_NUM];
}VZ_IVS_RULE_TIME_CFG;

typedef struct _VZ_IVS_RULE_CFG_EX{
	DWORD			 dwRuleNum;
	VZ_IVS_RULE_INFO struRules[MAX_RULE_NUM];
	VZ_IVS_RULE_TIME_INFO struRuleTimes[MAX_RULE_NUM];
}VZ_IVS_RULE_CFG_EX;

typedef struct{
	DWORD          dwID;
	VZ_IVS_RECT   struRect;
	BYTE           byRes[4];
}VZ_IVS_TARGET_INFO;//����Ŀ����Ϣ


#define VZ_MAX_TARGET_NUM	32
//blob����
#define VZ_BLOB_HUMAN	0
#define VZ_BLOB_CAR		1
#define VZ_BLOB_TRUCK	2
#define VZ_BLOB_ANIMAL	3
#define VZ_BLOB_WATER	4
#define VZ_BLOB_BUBBLE	5
#define VZ_BLOB_GAS		6


typedef struct VZ_IVS_TARGET
{
	int id;		//Ŀ��ID
	int kind;	//Ŀ������
	unsigned short x;	//�������Xֵ
	unsigned short y;	//�������Yֵ
	unsigned short w;	//���ο��
	unsigned short h;	//���θ߶�
	unsigned int dwBitsRules;		//��λ��ӦruleID��Υ���Ϊ��1
	unsigned int dwBitsEvent;		//��IVS_EVENT_TYPE���
	//�жϸ�Ŀ���Ƿ�Υ�棬����dwBitsEvente������rulesFlag
}
VZ_IVS_TARGET;	//��������Ŀ�� size= 8+8+8 = 24

//������Ϣ
typedef struct VzTargetsInfo
{
	unsigned int num;
	VZ_IVS_TARGET tags[VZ_MAX_TARGET_NUM];
}
VzTargetsInfo;	//size = 24*32 + 4 = 772

#ifndef MAX_HIS_NUM
#define MAX_HIS_NUM		24
#endif

typedef struct VZ_IVS_TARGET_EXT
{
	VZ_IVS_TARGET ivsTarget;
	int motionKind;							//0Ϊ���룬1Ϊ����
	int contrailLen;						//�켣ʵ�ʳ���	//*/
	unsigned short contrailX[MAX_HIS_NUM];	//�켣X
	unsigned short contrailY[MAX_HIS_NUM];	//�켣Y
}
VZ_IVS_TARGET_EXT;	//size = 24 + 8 + 4*24*2 = 224

typedef struct VzTargetExtsInfo
{
	unsigned int num;
	VZ_IVS_TARGET_EXT tags[VZ_MAX_TARGET_NUM];
}
VzTargetExtsInfo;	//size = 4 + 224*32 = 

typedef enum VZ_ALARM_TYPE{
	VZ_ALARM_TYPE_NO_INFO,
	VZ_ALARM_TYPE_RULE,		//�ɱ������򴥷���
	VZ_ALARM_TYPE_INPUT,	//�����뱨�����ص�
	VZ_ALARM_TYPE_PROTOCOL,	//�������Э�����ݴ�����
	VZ_ALARM_TYPE_MAX
} VZ_ALARM_TYPE;

//������Ƶ
typedef struct _VZ_IVS_DRAWMODE{
	BYTE byDspAddTarget;		//dsp���ӱ���Ŀ��
	BYTE byDspAddRule;			//dsp�������ù���
	BYTE byDspAddTrajectory;	//dsp���ӹ켣	
	BYTE dwRes[2];
}VZ_IVS_DRAWMODE;

#define IVS_MAX_MODE 4	//�豸���е����ģʽ��	
typedef struct _IVS_Ability_INFO_{
	int ModeNum;//ģʽ����
	int AbilityMask[IVS_MAX_MODE];//ģʽ����
}IVS_Ability_INFO;

typedef struct _VZ_IVS_EVENT_ABILITY{
	IVS_Ability_INFO ability_info;
	BYTE  byMaxRuleNum;		//��������	
	BYTE  byMaxTargetNum;	//���Ŀ����
}VZ_IVS_EVENT_ABILITY;

//�����豸���� 
typedef enum _IVS_TYPE_{		
	IVS_NO				= 0,	//��������Ƶ�汾
	IVS_OIL_BASE		= 1,	//���������
	IVS_OIL_FULL		= 2,	//����ȫ���ܰ�
	IVS_BEHAVIOR_BASE   = 3,	//��Ϊ����������
	IVS_BEHAVIOR_FULL   = 4,    //��Ϊ����ȫ���ܰ�
	IVS_ITS				= 5,	//���ܽ�ͨ�豸
	IVS_FIRE			= 6,    //�̻�ʶ��
	IVS_ENHANCE			= 7,    //��Ƶ��ǿ��
	IVS_ATM				= 8,	//ATM �����豸
	IVS_CARCOUNT		= 9,	//����ͳ���豸
	IVS_CAMHEALTH_SERVER= 10,	//���������״�����
	IVS_PLATER_CLIENT   = 11,	//����ʶ��ͻ���
	IVS_PLATER_SERVER   = 12,	//����ʶ�������
	IVS_PTZ				= 13,	//ptz������
	IVS_HJ_T212			= 14,	//������������豸
	IVS_PTZ_TA			= 15,	//PTZ��������ʮ������£���
	IVS_PCOUNT_SERVER	= 16,	//����ͳ����
	IVS_BEHAVIOR_BASE_HELMET = 17,	//��ȫñ���
	IVS_TYPE_NUM
}IVS_TYPE;

//--------------------end of vz alarm config-----------------------

//=======================ͨ�����ܹ�������======================
//���������ƣ����룩+�������ͣ��������ֲ�ͬ���������������Ҫ��+��ţ��������ֶ�η�������ͬ��������Ҫ��
#define MAKE_IVS_CMD(CMD_NAME, IVS_TYPE, CMD_SN) ((((CMD_SN)&0xFF)<<16)|(((IVS_TYPE)&0xFF)<<8)|((CMD_NAME)&0xFF))

#define GET_IVS_CMD_NAME(CMD) ((CMD)&0xFF)

#define GET_IVS_CMD_IVS_TYPE(CMD) (((CMD)>>8)&0xFF)

#define GET_IVS_CMD_SN(CMD) (((CMD)>>16)&0xFF)

#define MAX_VZIVS_CTRL_CMD_BUF_LEN	1016
typedef struct
{
	unsigned int uCMD;		//IVSͨ������
	unsigned int uLenCMD;	//����buf�ĳ���
	unsigned char buf[MAX_VZIVS_CTRL_CMD_BUF_LEN];	//IVSͨ�����������
}
VZ_IVS_CTRL;	//���ڿ��������豸��ͨ������ṹ��

//==================VS��Ϣ����====================s
#define MAXNUM_CLIENT_INFO	256
//�����ӵĿͻ�����Ϣ
typedef struct VzClientInfo
{
	unsigned char ip[4];	//IP��ַ
}
VzClientInfo;

//��Ϣ��
typedef struct VzConnectedClients
{
	VzClientInfo clientInfo[MAXNUM_CLIENT_INFO];
	int count;
}
VzConnectedClients;

typedef struct IVSAlarmBuffer
{
	long tv_sec;
	long tv_usec;
	VzTargetsInfo targetsInfo;
}
IVSAlarmBuffer;		//size = 8+900 = 908

typedef struct IVSAlarmBufferExt
{
	long tv_sec;
	long tv_usec;
	int bTSTimeout;	//ʱ������µĹ�����Ч
	VzTargetExtsInfo targetsInfo;
}
IVSAlarmBufferExt;

typedef struct RuleCountStatisInfo
{
	int ruleID;
	int L2RCount;
	int R2LCount;
}RuleCountStatisInfo;

typedef struct IVSCountStatisInfo
{
	long tv_sec_begin;
	long tv_usec_begin;
	int infoNum;
	RuleCountStatisInfo RuleStatisInfo[MAX_RULE_NUM];
}
IVSCountStatisInfo;


#define MAX_STRLEN_PROTOCOL_DETAIL	32
//����Э�����ݵı���(VZ_ALARM_TYPE_PROTOCOL)���صĽṹ��
typedef struct _IVSProtocolInput
{
	char strDetail[MAX_STRLEN_PROTOCOL_DETAIL];		//��ϸ�����ݽṹ����
	int sizeParam;	//���ݽṹ�ߴ磨����ΪУ�飩
	void *pParam;	//���ݽṹָ�룬�ο���strDetail��Ӧ��ͷ�ļ��ж����
}
IVSProtocolInput;

#endif
