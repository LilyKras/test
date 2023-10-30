import 'package:test_form/core/domain/models/address/address.dart';

const Address senderAddress = Address(
    fullName: 'dsfdsfsd',
    email: 'dsfdsfds',
    phoneNumber: 'dfsfdsf',
    country: 'dsfsdfsd',
    city: 'dfsfsdf',
    postCode: 0,
    adressLine: ['a', 'b']);
const Address recepientAddress = Address(
    fullName: 'aaa',
    email: 'bbbbbbbbb',
    phoneNumber: 'fdsfsdf',
    country: 'sdfsdfsdf',
    city: 'dsfdsds',
    postCode: 0,
    adressLine: ['a', 'b', 'c']);

List<Address> senderAddresses = [senderAddress, senderAddress, senderAddress];
List<Address> recepientAddresses = [recepientAddress, recepientAddress];
