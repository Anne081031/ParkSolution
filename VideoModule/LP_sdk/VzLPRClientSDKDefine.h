//VZ����ʶ���豸SDK�Ľṹ��ȶ���

#include <VzClientSDK_CommonDefine.h>
#include <VzClientSDK_LPDefine.h>

/**�豸�������VzLPRClient_Open��ã��豸������صĺ�������Ҫ*/
typedef int VzLPRClientHandle;

/**���ûص�����ʱ��Ҫָ��������*/
typedef enum
{
	VZ_LPRC_CALLBACK_COMMON_NOTIFY,	/**<SDKͨ����Ϣ������Ԥ����*/
	VZ_LPRC_CALLBACK_PLATE_STR,		/**<���ƺ����ַ���Ԥ����*/
	VZ_LRPC_CALLBACK_FULL_IMAGE,	/**<����ͼ��*/
	VZ_LPRC_CALLBACK_CLIP_IMAGE,	/**<��ȡͼ��*/
	VZ_LPRC_CALLBACK_PLATE_RESULT,	/**<ʵʱʶ����*/
	VZ_LPRC_CALLBACK_PLATE_RESULT_STABLE,	/**<�ȶ�ʶ����*/
	VZ_LPRC_CALLBACK_PLATE_RESULT_TRIGGER,	/**<������ʶ����������API���������IO��Ӳ������ʽ��*/
	VZ_LPRC_CALLBACK_VIDEO,			/**<��Ƶ֡�ص�*/
}
VZ_LPRC_CALLBACK_TYPE;

/**ͨ����Ϣ��������*/
typedef enum
{
	VZ_LPRC_NO_ERR = 0,		/**<�޴���*/
	VZ_LPRC_ACCESS_DENIED,	/**<�û����������*/
	VZ_LPRC_NETWORK_ERR,	/**<�������ӹ���*/
}
VZ_LPRC_COMMON_NOTIFY;

/**ʶ����������*/
typedef enum
{
	VZ_LPRC_RESULT_REALTIME,		/**<ʵʱʶ����*/
	VZ_LPRC_RESULT_STABLE,			/**<�ȶ�ʶ����*/
	VZ_LPRC_RESULT_FORCE_TRIGGER,	/**<���á�VzLPRClient_ForceTrigger��������ʶ����*/
	VZ_LPRC_RESULT_IO_TRIGGER,		/**<�ⲿIO�źŴ�����ʶ����*/
	VZ_LPRC_RESULT_VLOOP_TRIGGER,	/**<������Ȧ������ʶ����*/
}
VZ_LPRC_RESULT_TYPE;

/**���㶨��
  *X_1000��Y_1000��ȡֵ��ΧΪ[0, 1000]��
  *��λ����ϢΪʵ��ͼ��λ��������ͼ��λ�õ���Գߴ磻
  *����X_1000 = x*1000/win_width������xΪ����ͼ���е�ˮƽ����λ�ã�win_widthΪͼ����
*/
typedef struct
{
	unsigned X_1000;	/**<ˮƽ�����������*/
	unsigned Y_1000;	/**<��ֱ�����������*/
}
VZ_LPRC_VERTEX;

/**������Ȧ����*/
#define VZ_LPRC_VIRTUAL_LOOP_NAME_LEN	32

/**������Ȧ�������*/
#define VZ_LPRC_VIRTUAL_LOOP_VERTEX_NUM	4

/**������Ȧ��Ϣ����*/
typedef struct
{
	BYTE			byID;		/**<���*/
	BYTE			byEnable;	/**<�Ƿ���Ч*/
	BYTE			byDraw;		/**<�Ƿ����*/
	BYTE			byRes[1];	/**<Ԥ��*/
	char			strName[VZ_LPRC_VIRTUAL_LOOP_NAME_LEN];			/**<�Զ�������*/
	VZ_LPRC_VERTEX	struVertex[VZ_LPRC_VIRTUAL_LOOP_VERTEX_NUM];	/**<��������*/
}
VZ_LPRC_VIRTUAL_LOOP;

/**���������Ȧ����*/
#define VZ_LPRC_VIRTUAL_LOOP_MAX_NUM	8

/**������Ȧ����*/
typedef struct
{
	unsigned				uNumVirtualLoop;	/**<ʵ�ʸ���*/
	VZ_LPRC_VIRTUAL_LOOP	struLoop[VZ_LPRC_VIRTUAL_LOOP_MAX_NUM];	/**<������Ȧ����*/
}
VZ_LPRC_VIRTUAL_LOOPS;

/**ʡ���ַ��������ߴ�*/
#define VZ_LPRC_PROVINCE_STR_LEN	128

/**Ԥ��ʡ����Ϣ*/
typedef struct
{
	char strProvinces[VZ_LPRC_PROVINCE_STR_LEN];	/**<����֧�ֵ�ʡ�ݼ�ƹ��ɵ��ַ���*/
	int nCurrIndex;	/**<��ǰ��Ԥ��ʡ�ݵ���ţ���strProvinces�еģ�-1Ϊδ����*/
}
VZ_LPRC_PROVINCE_INFO;

/**ͼ����Ϣ*/
typedef struct
{
	unsigned		uWidth;			/**<���*/
	unsigned		uHeight;		/**<�߶�*/
	unsigned		uPitch;			/**<ͼ���ȵ�һ��������ռ�ڴ��ֽ���*/
	unsigned		uPixFmt;		/**<ͼ�����ظ�ʽ���ο�ö�ٶ���ͼ���ʽ��ImageFormatXXX��*/
	const unsigned char	*pBuffer;	/**<ͼ���ڴ���׵�ַ*/
}
VZ_LPRC_IMAGE_INFO;
