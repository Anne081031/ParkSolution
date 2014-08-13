//VzClientSDK���뻷�������صĶ���
#ifndef _VZ_CLIENT_SDK_HJ_T212_H_
#define _VZ_CLIENT_SDK_HJ_T212_H_

#include "VzClientSDK_HJT212Define.h"
#include "VzClientSDK.h"

//�������api
/**
*  @brief ��������������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [OUT] enable 1��ʾ������0��ʾ�ر�
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_GetHJ212AlarmStreamEnable(int iUserID, int* enable);

/**
*  @brief ��������������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN] enable 1��ʾ������0��ʾ�ر�
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_SetHJ212AlarmStreamEnable(int iUserID, int enable);
/**
*  @brief �������ڲ�������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [OUT]  pSerial ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_GetHJ212Serial(int iUserID, VZ_HJT212_Serial* pSerial);

/**
*  @brief �������ڲ�������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN] pSerial ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_SetHJ212Serial(int iUserID, VZ_HJT212_Serial* pSerial);
/**
*  @brief ����OSD����
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [OUT] pOSD ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_GetHJ212OSD(int iUserID, VZ_HJT212_OSD_Readable *pOSD);

/**
*  @brief ����OSD����
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN] pOSD ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_SetHJ212OSD(int iUserID, VZ_HJT212_OSD_Readable *pOSD);
/**
*  @brief ��������������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [OUT]  pServer ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_GetHJ212Server(int iUserID, VZ_HJT212_Server* pServer);

/**
*  @brief ��������������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN] pServer ����
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_SetHJ212Server(int iUserID, VZ_HJT212_Server* pServer);
/**
*  @brief ��ȡ�豸�������õ���Ⱦ����Ϣ�����߷���ָ����Ⱦ������Ӧ��������Ϣ
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN][OUT] pItemInfo ��������codeȫ��Ϊ�գ�����豸�����õ���Ⱦ����Ϣ�����򣬻����code��Ӧ��������Ϣ
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_GetHJ212ItemInfo(int iUserID, VZ_HJT212_ItemInfo* pItemInfo);

/**
*  @brief ������������
*  @param [IN] iUserID VZC_Login�������ص��û�ID
*  @param [IN] pItemInfo �������������жԵ�λ����������Ч��
*  @return ����ֵΪ0��ʾ�ɹ�����������ֵ��ʾʧ�ܡ�
*/
VZC_DLL_EXP int __stdcall VZC_IVS_SetHJ212ItemInfo(int iUserID, VZ_HJT212_ItemInfo* pItemInfo);

#endif
