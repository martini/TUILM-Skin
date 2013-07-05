
$Self->{'OTRSMultiServiceSelect::RequiredLastLevel'} =  '1';
$Self->{'PostmasterDefaultQueue'} =  'UniRZ::ITSD';
$Self->{'CustomerFrontend::Module'}->{'CustomerTicketOverview'} =  {
  'Description' => 'Overview of customer tickets',
  'NavBar' => [
    {
      'AccessKey' => 'm',
      'Block' => '',
      'Description' => 'My Tickets',
      'Link' => 'Action=CustomerTicketOverview;Subaction=MyTickets',
      'LinkOption' => '',
      'Name' => 'My Tickets',
      'NavBar' => '',
      'Prio' => '110',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'Overview'
};
delete $Self->{'Frontend::Module'}->{'AgentTicketBulk'};
delete $Self->{'Frontend::Module'}->{'AgentTicketPrint'};
delete $Self->{'Frontend::Module'}->{'AgentTicketFreeText'};
delete $Self->{'Frontend::Module'}->{'AgentTicketForward'};
delete $Self->{'Frontend::Module'}->{'AgentTicketBounce'};
delete $Self->{'Frontend::Module'}->{'AgentTicketResponsible'};
delete $Self->{'Frontend::Module'}->{'AgentTicketWatcher'};
delete $Self->{'Frontend::Module'}->{'AgentTicketEscalationView'};
$Self->{'Frontend::Module'}->{'AgentTicketStatusView'} =  {
  'Description' => 'Overview of all open tickets',
  'NavBar' => [
    {
      'AccessKey' => 'v',
      'Block' => '',
      'Description' => 'Overview of all open Tickets.',
      'Group' => [
        'admin'
      ],
      'Link' => 'Action=AgentTicketStatusView',
      'LinkOption' => '',
      'Name' => 'Status view',
      'NavBar' => 'Ticket',
      'Prio' => '110',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'Status view'
};
delete $Self->{'Frontend::Module'}->{'AgentTicketWatchView'};
delete $Self->{'Frontend::Module'}->{'AgentTicketResponsibleView'};
$Self->{'Frontend::Module'}->{'AgentTicketSearch'} =  {
  'Description' => 'Search Ticket',
  'NavBar' => [
    {
      'AccessKey' => 's',
      'Block' => '',
      'Description' => 'Search Tickets',
      'Group' => [
        'admin'
      ],
      'Link' => 'Action=AgentTicketSearch',
      'LinkOption' => 'onclick="window.setTimeout(function(){Core.Agent.Search.OpenSearchDialog(\'AgentTicketSearch\');}, 0); return false;"',
      'Name' => 'Search',
      'NavBar' => 'Ticket',
      'Prio' => '300',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'Search'
};
$Self->{'Frontend::Module'}->{'AgentTicketQueue'} =  {
  'Description' => 'Overview of all open Tickets',
  'Loader' => {
    'CSS' => [
      'Core.AgentTicketQueue.css'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => 'o',
      'Block' => '',
      'Description' => 'Overview of all open Tickets',
      'Group' => [
        'admin'
      ],
      'Link' => 'Action=AgentTicketQueue',
      'LinkOption' => '',
      'Name' => 'Queue view',
      'NavBar' => 'Ticket',
      'Prio' => '100',
      'Type' => ''
    },
    {
      'AccessKey' => 't',
      'Block' => 'ItemArea',
      'Description' => '',
      'Link' => 'Action=AgentTicketQueue',
      'LinkOption' => '',
      'Name' => 'Tickets',
      'NavBar' => 'Ticket',
      'Prio' => '200',
      'Type' => 'Menu'
    }
  ],
  'NavBarName' => 'Ticket',
  'Title' => 'QueueView'
};
$Self->{'Ticket::Frontend::CustomerTicketZoom'}->{'State'} =  '0';
$Self->{'Ticket::Frontend::CustomerTicketZoom'}->{'Priority'} =  '0';
$Self->{'Ticket::Frontend::CustomerTicketMessage'}->{'QueueDefault'} =  'UniRZ::ITSD';
$Self->{'DashboardBackend'}->{'0260-TicketCalendar'} =  {
  'Block' => 'ContentSmall',
  'CacheTTL' => '2',
  'Default' => '1',
  'Group' => 'admin',
  'Limit' => '6',
  'Module' => 'Kernel::Output::HTML::DashboardCalendar',
  'OwnerOnly' => '',
  'Permission' => 'rw',
  'Title' => 'Upcoming Events'
};
$Self->{'DashboardBackend'}->{'0250-TicketStats'} =  {
  'Block' => 'ContentSmall',
  'CacheTTL' => '30',
  'Closed' => '1',
  'Created' => '1',
  'Default' => '1',
  'Group' => 'admin',
  'Module' => 'Kernel::Output::HTML::DashboardTicketStatsGeneric',
  'Permission' => 'rw',
  'Title' => '7 Day Stats'
};
delete $Self->{'DashboardBackend'}->{'0110-TicketEscalation'};
delete $Self->{'Ticket::Frontend::MenuModule'}->{'448-Watch'};
delete $Self->{'Ticket::Frontend::MenuModule'}->{'420-Customer'};
delete $Self->{'Ticket::Frontend::MenuModule'}->{'410-Responsible'};
delete $Self->{'Ticket::Frontend::MenuModule'}->{'310-FreeText'};
delete $Self->{'Ticket::Frontend::MenuModule'}->{'210-Print'};
delete $Self->{'Frontend::ToolBarModule'}->{'7-Ticket::TicketWatcher'};
$Self->{'Frontend::ToolBarModule'}->{'2-Ticket::AgentTicketStatus'} =  {
  'AccessKey' => 'o',
  'Action' => 'AgentTicketStatusView',
  'CssClass' => 'StatusView',
  'Link' => 'Action=AgentTicketStatusView',
  'Module' => 'Kernel::Output::HTML::ToolBarLink',
  'Name' => 'Status view',
  'Priority' => '1010020'
};
$Self->{'Frontend::ToolBarModule'}->{'1-Ticket::AgentTicketQueue'} =  {
  'AccessKey' => 'q',
  'Action' => 'AgentTicketQueue',
  'CssClass' => 'QueueView',
  'Link' => 'Action=AgentTicketQueue',
  'Module' => 'Kernel::Output::HTML::ToolBarLink',
  'Name' => 'Queue view',
  'Priority' => '1010010'
};
$Self->{'Ticket::Frontend::AgentTicketPriority'}->{'Body'} =  "Grund der Priorit\x{e4}ts\x{e4}nderung ist:";
$Self->{'Ticket::Frontend::AgentTicketPriority'}->{'RequiredLock'} =  '0';
$Self->{'Ticket::Frontend::AgentTicketPending'}->{'Body'} =  'Grund für das Warten ist:';
$Self->{'Ticket::Frontend::AgentTicketPending'}->{'RequiredLock'} =  '0';
$Self->{'Ticket::Frontend::AgentTicketOwner'}->{'Body'} =  'Der Grund für die Änderung des Ticketsbesitzer ist:';
$Self->{'Ticket::Frontend::AgentTicketNote'}->{'Title'} =  '1';
$Self->{'Ticket::Frontend::AgentTicketNote'}->{'Service'} =  '1';
$Self->{'Ticket::Frontend::AgentTicketClose'}->{'ArticleTypes'} =  {
  'note-external' => '1',
  'note-internal' => '1',
  'note-report' => '0'
};
$Self->{'Ticket::Frontend::AgentTicketClose'}->{'Body'} =  'Grund für das Schließen des Ticket ist:';
$Self->{'Ticket::Frontend::AgentTicketEmail'}->{'StateType'} =  [
  'open',
  'pending reminder'
];
$Self->{'Ticket::Frontend::AgentTicketPhone'}->{'StateType'} =  [
  'open',
  'pending reminder'
];
$Self->{'Ticket::Frontend::AgentTicketPhone::AllowMultipleFrom'} =  '0';
$Self->{'Ticket::Frontend::NewResponsibleSelection'} =  '0';
$Self->{'Ticket::Frontend::AgentTicketPhoneInbound'}->{'StateType'} =  [
  'open',
  'pending reminder',
  'closed'
];
$Self->{'Ticket::Frontend::AgentTicketPhoneOutbound'}->{'StateType'} =  [
  'open',
  'pending reminder',
  'closed'
];
$Self->{'Ticket::Frontend::AgentTicketPhoneOutbound'}->{'State'} =  'open';
$Self->{'Ticket::Frontend::AgentTicketPhoneOutbound'}->{'RequiredLock'} =  '0';
$Self->{'Ticket::Frontend::BulkAccountedTime'} =  '0';
$Self->{'Ticket::Frontend::AccountTime'} =  '0';
$Self->{'Ticket::Frontend::AgentTicketQueue'}->{'Blink'} =  '0';
$Self->{'Ticket::Frontend::CustomerTicketOverviewSortable'} =  'Sortable';
$Self->{'Ticket::UseArticleColors'} =  '1';
$Self->{'Ticket::StorageModule'} =  'Kernel::System::Ticket::ArticleStorageFS';
$Self->{'Ticket::NumberGenerator'} =  'Kernel::System::Ticket::Number::AutoIncrement';
$Self->{'Ticket::Service::Default::UnknownCustomer'} =  '1';
$Self->{'Ticket::Service'} =  '1';
$Self->{'Ticket::SubjectRe'} =  'Ihre Anfrage';
$Self->{'Ticket::HookDivider'} =  ':';
$Self->{'Ticket::Hook'} =  'TUILM#';
$Self->{'DashboardBackend'}->{'0410-RSS'} =  {
  'Block' => 'ContentSmall',
  'CacheTTL' => '360',
  'Default' => '1',
  'Description' => '',
  'Group' => 'admin',
  'Limit' => '6',
  'Module' => 'Kernel::Output::HTML::DashboardRSS',
  'Title' => 'OTRS News',
  'URL' => 'http://www.otrs.com/en/rss.xml',
  'URL_de' => 'http://www.otrs.com/de/rss.xml',
  'URL_es' => 'http://www.otrs.com/es/rss.xml',
  'URL_nl' => 'http://www.otrs.com/nl/rss.xml',
  'URL_ru' => 'http://www.otrs.com/ru/rss.xml',
  'URL_zh' => 'http://www.otrs.com/cn/rss.xml'
};
$Self->{'DashboardBackend'}->{'0400-UserOnline'} =  {
  'Block' => 'ContentSmall',
  'CacheTTLLocal' => '5',
  'Default' => '0',
  'Description' => '',
  'Filter' => 'Agent',
  'Group' => 'admin',
  'IdleMinutes' => '60',
  'Limit' => '10',
  'Module' => 'Kernel::Output::HTML::DashboardUserOnline',
  'ShowEmail' => '1',
  'SortBy' => 'UserLastname',
  'Title' => 'Online'
};
$Self->{'Frontend::Module'}->{'AgentStats'} =  {
  'Description' => 'Stats',
  'Group' => [
    'admin'
  ],
  'Loader' => {
    'JavaScript' => [
      'Core.Agent.Stats.js'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => '',
      'Block' => 'ItemArea',
      'Description' => '',
      'Link' => 'Action=AgentStats;Subaction=Overview',
      'LinkOption' => '',
      'Name' => 'Statistics',
      'NavBar' => 'Stats',
      'Prio' => '8500',
      'Type' => 'Menu'
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'Overview',
      'GroupRo' => [
        'stats'
      ],
      'Link' => 'Action=AgentStats;Subaction=Overview',
      'LinkOption' => '',
      'Name' => 'Overview',
      'NavBar' => 'Stats',
      'Prio' => '100',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'New',
      'Group' => [
        'stats'
      ],
      'Link' => 'Action=AgentStats;Subaction=Add',
      'LinkOption' => '',
      'Name' => 'New',
      'NavBar' => 'Stats',
      'Prio' => '200',
      'Type' => ''
    },
    {
      'AccessKey' => '',
      'Block' => '',
      'Description' => 'Import',
      'Group' => [
        'stats'
      ],
      'Link' => 'Action=AgentStats;Subaction=Import',
      'LinkOption' => '',
      'Name' => 'Import',
      'NavBar' => 'Stats',
      'Prio' => '300',
      'Type' => ''
    }
  ],
  'NavBarName' => 'Stats',
  'Title' => 'Stats'
};
$Self->{'Frontend::Themes'} =  {
  'Lite' => '0',
  'Standard' => '1',
  'TUILM' => '1',
  'TUILM_test' => '1'
};
$Self->{'Frontend::Module'}->{'AdminCustomerCompany'} =  {
  'Description' => 'Admin',
  'Group' => [
    'admin'
  ],
  'NavBar' => [
    {
      'AccessKey' => 'c',
      'Block' => 'ItemArea',
      'Description' => '',
      'Link' => 'Action=AdminCustomerCompany;Nav=Agent',
      'LinkOption' => '',
      'Name' => 'Companies',
      'NavBar' => 'Companies',
      'Prio' => '9100',
      'Type' => 'Menu'
    }
  ],
  'NavBarModule' => {
    'Block' => 'Customer',
    'Description' => 'Create and manage companies.',
    'Module' => 'Kernel::Output::HTML::NavBarModuleAdmin',
    'Name' => 'Customer Companies',
    'Prio' => '310'
  },
  'NavBarName' => 'Admin',
  'Title' => 'Customer Companies'
};
$Self->{'Frontend::Module'}->{'AdminCustomerUser'} =  {
  'Description' => 'Edit Customers',
  'Group' => [
    'admin'
  ],
  'Loader' => {
    'JavaScript' => [
      'Core.Agent.TicketAction.js'
    ]
  },
  'NavBar' => [
    {
      'AccessKey' => 'c',
      'Block' => 'ItemArea',
      'Description' => '',
      'Link' => 'Action=AdminCustomerUser;Nav=Agent',
      'LinkOption' => '',
      'Name' => 'Customers',
      'NavBar' => 'Customers',
      'Prio' => '9000',
      'Type' => 'Menu'
    }
  ],
  'NavBarModule' => {
    'Block' => 'Customer',
    'Description' => 'Create and manage customers.',
    'Module' => 'Kernel::Output::HTML::NavBarModuleAdmin',
    'Name' => 'Customers',
    'Prio' => '300'
  },
  'NavBarName' => 'Customers',
  'Title' => 'Customers'
};
delete $Self->{'Frontend::Module'}->{'AgentLinkObject'};
$Self->{'CustomerPanelLostPassword'} =  '0';
delete $Self->{'PreferencesGroups'}->{'SpellDict'};
$Self->{'NotificationSenderEmail'} =  'otrs@tu-ilmenau.de';
$Self->{'SwitchToUser'} =  '1';
$Self->{'ShowMotd'} =  '1';
$Self->{'LostPassword'} =  '0';
$Self->{'WebUploadCacheModule'} =  'Kernel::System::Web::UploadCache::FS';
delete $Self->{'SendmailBcc'};
$Self->{'SendmailModule::Host'} =  'mail.tu-Ilmenau.de';
$Self->{'Frontend::RichTextHeight'} =  '120';
$Self->{'Frontend::RichTextWidth'} =  '750';
$Self->{'AgentLogo'} =  {
  'StyleHeight' => '67px',
  'StyleRight' => '0px',
  'StyleTop' => '5px',
  'StyleWidth' => '324px',
  'URL' => 'skins/Agent/default/img/Logo_tuilm.png'
};
$Self->{'CustomerLogo'} =  {
  'StyleHeight' => '60px',
  'StyleRight' => '30px',
  'StyleTop' => '2px',
  'StyleWidth' => '295px',
  'URL' => 'skins/Customer/default/img/Logo_tuilm.png'
};
$Self->{'CustomerHeadline'} =  '';
$Self->{'DefaultTheme'} =  'TUILM';
$Self->{'DefaultLanguage'} =  'de';
$Self->{'Organization'} =  'TU-Ilmenau';
$Self->{'AdminEmail'} =  'alejandra.lopez@tu-ilmenau.de';
$Self->{'HttpType'} =  'https';
$Self->{'FQDN'} =  'otrs.tu-ilmenau.de';
$Self->{'SystemID'} =  '01';
$Self->{'SecureMode'} =  '1';
