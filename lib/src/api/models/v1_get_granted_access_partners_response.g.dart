// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_granted_access_partners_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetGrantedAccessPartnersResponseImpl
    _$$V1GetGrantedAccessPartnersResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$V1GetGrantedAccessPartnersResponseImpl(
          partners: (json['partners'] as List<dynamic>)
              .map((e) =>
                  V1GetPartnerInfoResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$V1GetGrantedAccessPartnersResponseImplToJson(
        _$V1GetGrantedAccessPartnersResponseImpl instance) =>
    <String, dynamic>{
      'partners': instance.partners,
    };
