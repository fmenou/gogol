{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsInsert@.
module Network.Google.Resource.DFAReporting.Reports.Insert
    (
    -- * REST Resource
      ReportsInsertResource

    -- * Creating a Request
    , reportsInsert'
    , ReportsInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIP
    , riProfileId
    , riReport
    , riKey
    , riOAuthToken
    , riFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsInsert@ which the
-- 'ReportsInsert'' request conforms to.
type ReportsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Report :> Post '[JSON] Report

-- | Creates a report.
--
-- /See:/ 'reportsInsert'' smart constructor.
data ReportsInsert' = ReportsInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIP      :: !(Maybe Text)
    , _riProfileId   :: !Int64
    , _riReport      :: !Report
    , _riKey         :: !(Maybe Key)
    , _riOAuthToken  :: !(Maybe OAuthToken)
    , _riFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIP'
--
-- * 'riProfileId'
--
-- * 'riReport'
--
-- * 'riKey'
--
-- * 'riOAuthToken'
--
-- * 'riFields'
reportsInsert'
    :: Int64 -- ^ 'profileId'
    -> Report -- ^ 'Report'
    -> ReportsInsert'
reportsInsert' pRiProfileId_ pRiReport_ =
    ReportsInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIP = Nothing
    , _riProfileId = pRiProfileId_
    , _riReport = pRiReport_
    , _riKey = Nothing
    , _riOAuthToken = Nothing
    , _riFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' ReportsInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' ReportsInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIP :: Lens' ReportsInsert' (Maybe Text)
riUserIP = lens _riUserIP (\ s a -> s{_riUserIP = a})

-- | The DFA user profile ID.
riProfileId :: Lens' ReportsInsert' Int64
riProfileId
  = lens _riProfileId (\ s a -> s{_riProfileId = a})

-- | Multipart request metadata.
riReport :: Lens' ReportsInsert' Report
riReport = lens _riReport (\ s a -> s{_riReport = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReportsInsert' (Maybe Key)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' ReportsInsert' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReportsInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

instance GoogleAuth ReportsInsert' where
        authKey = riKey . _Just
        authToken = riOAuthToken . _Just

instance GoogleRequest ReportsInsert' where
        type Rs ReportsInsert' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsInsert'{..}
          = go _riProfileId _riQuotaUser (Just _riPrettyPrint)
              _riUserIP
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riReport
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsInsertResource)
                      r
                      u