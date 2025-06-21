@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Dashboard')
@section('content')
<div class="row">
    <div class="col-xl-12">
        @if(session('name'))        
            <h1>Hola: {{ session('name') }}</h1>
        @endif
    </div>
</div>
<div class="row">
    <div class="col-xl-12">
        <div class="row">
            <div class="col-xl-6">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-header border-0 pb-0">
                                <h4 class="fs-20 font-w700 mb-0">Completion Project Rate</h4>
                                <div class="dropdown ">
                                    <div class="btn-link" data-bs-toggle="dropdown">
                                        <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="12.4999" cy="3.5" r="2.5" fill="#A5A5A5"></circle>
                                            <circle cx="12.4999" cy="11.5" r="2.5" fill="#A5A5A5"></circle>
                                            <circle cx="12.4999" cy="19.5" r="2.5" fill="#A5A5A5"></circle>
                                        </svg>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="javascript:void(0)">Delete</a>
                                        <a class="dropdown-item" href="javascript:void(0)">Edit</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pb-0">
                                <div id="revenueMap" class="revenueMap"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="row">                                        
                    <div class="col-xl-12">
                        <div class="row">
                            <div class="col-xl-6 col-sm-6">
                                <div class="card">
                                    <div class="card-body d-flex px-4 pb-0 justify-content-between">
                                        <div>
                                            <h4 class="fs-18 font-w600 mb-4 text-nowrap">Total Clients</h4>
                                            <div class="d-flex align-items-center">
                                                <h2 class="fs-32 font-w700 mb-0">68</h2>
                                                <span class="d-block ms-4">
                                                    <svg width="21" height="11" viewbox="0 0 21 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M1.49217 11C0.590508 11 0.149368 9.9006 0.800944 9.27736L9.80878 0.66117C10.1954 0.29136 10.8046 0.291359 11.1912 0.661169L20.1991 9.27736C20.8506 9.9006 20.4095 11 19.5078 11H1.49217Z" fill="#09BD3C"></path>
                                                    </svg>
                                                    <small class="d-block fs-16 font-w400 text-success">+0,5%</small>
                                                </span>
                                            </div>
                                        </div>
                                        <div id="columnChart"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6">
                                <div class="card">
                                    <div class="card-body px-4 pb-0">
                                        <h4 class="fs-18 font-w600 mb-5 text-nowrap">Total Clients</h4>
                                        <div class="progress default-progress">
                                            <div class="progress-bar bg-gradient1 progress-animated" style="width: 40%; height:10px;" role="progressbar">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-end mt-2 pb-3 justify-content-between">
                                            <span>76 left from target</span>
                                            <h4 class="mb-0">42</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6">
                                <div class="card">
                                    <div class="card-body d-flex px-4  justify-content-between">
                                        <div>
                                            <div class="">
                                                <h2 class="fs-32 font-w700">562</h2>
                                                <span class="fs-18 font-w500 d-block">Total Clients</span>
                                                <span class="d-block fs-16 font-w400"><small class="text-danger">-2%</small> than last month</span>
                                            </div>
                                        </div>
                                        <div id="NewCustomers"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6">
                                <div class="card">
                                    <div class="card-body d-flex px-4  justify-content-between">
                                        <div>
                                            <div class="">
                                                <h2 class="fs-32 font-w700">892</h2>
                                                <span class="fs-18 font-w500 d-block">New Projects</span>
                                                <span class="d-block fs-16 font-w400"><small class="text-success">-2%</small> than last month</span>
                                            </div>
                                        </div>
                                        <div id="NewCustomers1"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection