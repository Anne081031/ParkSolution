//���ڽ���VZ�ĳ���ʶ���豸����������ʶ��һ���������ʶ���ն˵ȣ���Ӧ�ó���ӿ�
#ifndef _VZ_LPRC_SDK_H_
#define _VZ_LPRC_SDK_H_

#include <VzLPRClientSDKDefine.h>

#ifdef _DEV_API_
#define VZ_LPRC_API extern "C" __declspec(dllexport)
#else
#define VZ_LPRC_API extern "C" __declspec(dllimport)
#endif

/**
* @defgroup group_global ȫ�ֲ�������
* @defgroup group_device �����豸��������
*/

/**
*  @brief ȫ�ֳ�ʼ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note �����нӿڵ���֮ǰ����
*  @ingroup group_global
*/
VZ_LPRC_API int __stdcall VzLPRClient_Setup();

/**
*  @brief ȫ���ͷ�
*  @note �ڳ������ʱ���ã��ͷ�SDK����Դ
*  @ingroup group_global
*/
VZ_LPRC_API void __stdcall VzLPRClient_Cleanup();

/**
*  @brief ͨ���ûص���������ҵ����豸������Ϣ
*  @param  [IN] pStrDevName �豸����
*  @param  [IN] pStrIPAddr	�豸IP��ַ
*  @param  [IN] usPort1		�豸�˿ں�
*  @param  [IN] usPort2		Ԥ��
*  @param  [IN] pUserData	�ص�����������
*  @ingroup group_global
*/
typedef void (__stdcall *VZLPRC_FIND_DEVICE_CALLBACK)(const char *pStrDevName, const char *pStrIPAddr, WORD usPort1, WORD usPort2, void *pUserData);

/**
*  @brief ��ʼ�����豸
*  @param  [IN] func �ҵ����豸ͨ���ûص���������
*  @param  [IN] pUserData �ص������е�������
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_global
*/
VZ_LPRC_API int __stdcall VZLPRClient_StartFindDevice(VZLPRC_FIND_DEVICE_CALLBACK func, void *pUserData);

/**
*  @brief ֹͣ�����豸
*  @ingroup group_global
*/
VZ_LPRC_API void __stdcall VZLPRClient_StopFindDevice();

/**
*  @brief ͨ���ûص���������豸��һ��״̬��Ϣ
*  @param  [IN] handle		��VzLPRClient_Open������õľ��
*  @param  [IN] pUserData	�ص�����������
*  @param  [IN] eNotify		ͨ����Ϣ��������
*  @param  [IN] pStrDetail	��ϸ�����ַ���
*  @ingroup group_global
*/
typedef void (__stdcall *VZLPRC_COMMON_NOTIFY_CALLBACK)(VzLPRClientHandle handle, void *pUserData,
													   VZ_LPRC_COMMON_NOTIFY eNotify, const char *pStrDetail);

/**
*  @brief �����豸���ӷ��������صĻص�����
*  @param  [IN] func �豸���ӽ����״̬��ͨ���ûص���������
*  @param  [IN] pUserData �ص������е�������
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_global
*/
VZ_LPRC_API int __stdcall VZLPRClient_SetCommonNotifyCallBack(VZLPRC_COMMON_NOTIFY_CALLBACK func, void *pUserData);

/**
*  @brief ��һ���豸
*  @param  [IN] pStrIP �豸��IP��ַ
*  @param  [IN] wPort �豸�Ķ˿ں�
*  @param  [IN] pStrUserName �����豸�����û���
*  @param  [IN] pStrPassword �����豸��������
*  @return �����豸�Ĳ������������ʧ��ʱ������0
*  @ingroup group_device
*/
VZ_LPRC_API VzLPRClientHandle __stdcall VzLPRClient_Open(const char *pStrIP, WORD wPort, const char *pStrUserName, const char *pStrPassword);

/**
*  @brief �ر�һ���豸
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_Close(VzLPRClientHandle handle);

/**
*  @brief ͨ��IP��ַ�ر�һ���豸
*  @param  [IN] pStrIP �豸��IP��ַ
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_CloseByIP(const char *pStrIP);

/**
*  @brief ��ȡ����״̬
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN/OUT] pStatus �����ȡ״̬�ı�����ַ���������Ϊ 1�����ϣ�0δ����
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note   �û��������ڵ��øú�����������ѯ�豸�Ƿ���ߣ��Լ����ߺ��Ƿ�ָ�����
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_IsConnected(VzLPRClientHandle handle, BYTE *pStatus);

/**
*  @brief ����ʵʱ��Ƶ
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] hWnd ���ڵľ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_StartRealPlay(VzLPRClientHandle handle, void *hWnd);

/**
*  @brief ֹͣ���ڲ��ŵĴ����ϵ�ʵʱ��Ƶ
*  @param  [IN] hWnd ���ڵľ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_StopRealPlay(void *hWnd);

/**
*  @brief  ͨ���ûص��������ʵʱͼ������
*  @param  [IN] handle		��VzLPRClient_Open������õľ��
*  @param  [IN] pUserData	�ص�������������
*  @param  [IN] pFrame		ͼ��֡��Ϣ������ṹ�嶨��VzYUV420P
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
typedef void (__stdcall *VZLPRC_VIDEO_FRAME_CALLBACK)(VzLPRClientHandle handle, void *pUserData,
													  const VzYUV420P *pFrame);
/**
*  @brief ����ʵʱͼ�����ݵĻص�����
*  @param  [IN] handle		��VzLPRClient_Open������õľ��
*  @param  [IN] func		ʵʱͼ�����ݺ���
*  @param  [IN] pUserData	�ص������е�������
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_SetVideoFrameCallBack(VzLPRClientHandle handle, VZLPRC_VIDEO_FRAME_CALLBACK func, void *pUserData);

/**
*  @brief ͨ���ûص�������ó���ʶ����Ϣ
*  @param  [IN] handle			��VzLPRClient_Open������õľ��
*  @param  [IN] pUserData		�ص�������������
*  @param  [IN] pResult			������Ϣ�����׵�ַ������ṹ�嶨�� TH_PlateResult
*  @param  [IN] uNumPlates		���������еĳ��Ƹ���
*  @param  [IN] eResultType		����ʶ�������ͣ����ö�����Ͷ���VZ_LPRC_RESULT_TYPE
*  @param  [IN] pImgFull		��ǰ֡��ͼ�����ݣ�����ṹ�嶨��VZ_LPRC_IMAGE_INFO
*  @param  [IN] pImgPlateClip	��ǰ֡�г��������ͼ���������飬���е�Ԫ���복����Ϣ�����еĶ�Ӧ
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note   �����Ҫ�ûص��������ؽ�ͼ���� pImgFull ��pImgPlateClip����Ҫ�����ûص�������VzLPRClient_SetPlateInfoCallBack��ʱ�����ͼ���ݣ�����ûص��������ص�������ָ��Ϊ�գ�
*  @note   ʵʱ�����VZ_LPRC_RESULT_REALTIME���Ļص��ǲ�����ͼ���ݵ�
*  @ingroup group_device
*/
typedef int (__stdcall *VZLPRC_PLATE_INFO_CALLBACK)(VzLPRClientHandle handle, void *pUserData,
													const TH_PlateResult *pResult, unsigned uNumPlates,
													VZ_LPRC_RESULT_TYPE eResultType,
													const VZ_LPRC_IMAGE_INFO *pImgFull,
													const VZ_LPRC_IMAGE_INFO *pImgPlateClip);

/**
*  @brief ����ʶ�����Ļص�����
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] func ʶ�����ص����������ΪNULL�����ʾ�رոûص������Ĺ���
*  @param  [IN] pUserData �ص������е�������
*  @param  [IN] bEnableImage ָ��ʶ�����Ļص��Ƿ���Ҫ������ͼ��Ϣ��1Ϊ��Ҫ��0Ϊ����Ҫ
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_SetPlateInfoCallBack(VzLPRClientHandle handle, VZLPRC_PLATE_INFO_CALLBACK func, void *pUserData, int bEnableImage);

/**
*  @brief ������������źţ�ǿ�ƴ���ǰʱ�̵����ݲ�������
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note   ����ʶ����ͨ���ص������ķ�ʽ���أ������ǰ��Ƶ�������޳��ƣ���ص��������ᱻ����
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_ForceTrigger(VzLPRClientHandle handle);

/**
*  @brief ����������Ȧ
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] pVirtualLoops ������Ȧ�Ľṹ��ָ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_SetVirtualLoop(VzLPRClientHandle handle, const VZ_LPRC_VIRTUAL_LOOPS *pVirtualLoops);

/**
*  @brief ��ȡ�����õ�������Ȧ
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] pVirtualLoops ������Ȧ�Ľṹ��ָ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_GetVirtualLoop(VzLPRClientHandle handle,  VZ_LPRC_VIRTUAL_LOOPS *pVirtualLoops);

/**
*  @brief ��ȡ�����õ�Ԥ��ʡ��
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] pProvInfo Ԥ��ʡ����Ϣָ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_GetSupportedProvinces(VzLPRClientHandle handle, VZ_LPRC_PROVINCE_INFO *pProvInfo);

/**
*  @brief ����Ԥ��ʡ��
*  @param  [IN] handle ��VzLPRClient_Open������õľ��
*  @param  [IN] nIndex ����Ԥ��ʡ�ݵ���ţ������Ҫ�ο�VZ_LPRC_PROVINCE_INFO::strProvinces�е�˳�򣬴�0��ʼ�����С��0�����ʾ������Ԥ��ʡ��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_PresetProvinceIndex(VzLPRClientHandle handle, int nIndex);

/**
*  @brief ��ͼ�񱣴�ΪJPEG��ָ��·��
*  @param  [IN] pImgInfo ͼ��ṹ�壬Ŀǰֻ֧��Ĭ�ϵĸ�ʽ����ImageFormatRGB
*  @param  [IN] pFullPathName �������·����JPG��׺�����ļ����ַ���
*  @param  [IN] nQuality JPEGѹ����������ȡֵ��Χ1~100��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note   �������ļ����е�·����Ҫ����
*  @ingroup group_global
*/
VZ_LPRC_API int __stdcall VzLPRClient_ImageSaveToJpeg(const VZ_LPRC_IMAGE_INFO *pImgInfo, const char *pFullPathName, int nQuality);

/**
*  @brief �������ڲ��ŵ���Ƶ�ĵ�ǰ֡�Ľ�ͼ��ָ��·��
*  @param  [IN] hWnd ���ڲ�����Ƶ�Ĵ��ڵľ��
*  @param  [IN] pFullPathName �������·����JPG��׺�����ļ����ַ���
*  @param  [IN] nQuality JPEGѹ����������ȡֵ��Χ1~100��
*  @return 0��ʾ�ɹ���-1��ʾʧ��
*  @note   ǰ��������ָ����hWnd�Ĵ����Ѿ�������VzLPRClient_StartRealPlay����ʵʱ��Ƶ
*  @note   ʹ�õ��ļ����е�·����Ҫ����
*  @ingroup group_device
*/
VZ_LPRC_API int __stdcall VzLPRClient_GetSnapShootToJpeg(void *hWnd, const char *pFullPathName, int nQuality);

#endif
